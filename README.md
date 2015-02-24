[![Circle CI](https://circleci.com/gh/hortoncd/cookbook-alternate-ruby.svg?style=svg)](https://circleci.com/gh/hortoncd/cookbook-alternate-ruby)

Description
===========

Cookbook that will install alternate system ruby packages from various sources.

Requirements
============

## Platform

* Ubuntu (10.04+)

## Cookbooks

* apt(2.0.0+) - may well work with others, but only tested starting
  with this version

Attributes
==========

Attributes are under the `node[:alternate_ruby]` namespace.

* `node[:alternate_ruby][:source]` - source from which to install ruby
* `node[:alternate_ruby][:gem_bin_dir]` - bin dir gem binaries are installed in

* `node['alternate_ruby']['brightbox_repo']` - repo URL
* `node['alternate_ruby']['brightbox_key']` - key fingerprint for repo signing key
* `node['alternate_ruby']['brightbox_keyserver']` - keyserver to pull signing key for repo
* `node['alternate_ruby']['brightbox_components']` - components to configure in apt sources.list
* `node['alternate_ruby']['brightbox_package']` - name of the package to install

* `node['alternate_ruby']['unboxed_repo']` - repo URL
* `node['alternate_ruby']['unboxed_key']` - no key server, so URL to key file
* `node['alternate_ruby']['unboxed_components']` - components to configure in apt sources.list
* `node['alternate_ruby']['unboxed_package']` - package name, can be either 'ubxd-ruby1.9.2' or 'ubxd-ruby1.9.3'

Recipes
=======

## default

Calls the recipe to install ruby from the chosen source.  By default the source is 'brightbox'.

## brightbox

Installs a newer version of ruby 1.9.3 from the brightbox apt repository.  The patch level will change over time, so if you want to ensure a specific patch you will need to duplicate the repository and change the attributes to point at your mirrored repo.

## unboxed

Installs from the unboxed apt repository.  This is only available for ubuntu 10.04 on 64-bit machines.  Anything other will throw an exception.  The available versions are 1.9.2 and 1.9.3, controllable via  the `node['alternate_ruby']['unboxed_package']` attribute.

Usage
=====

Set `node[:alternate_ruby][:source]` to the source from which ruby will be installed and add the cookbook to the runlist.  Default source is `brightbox`.

License and Author
==================

- Author:: Chris Horton (<hortoncd@gmail.com>)
- Copyright:: 2013 - 2014, Chris Horton

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
