#
# Cookbook Name:: alternate_ruby
# Attributes:: default
#
# Copyright 2013 - 2017, Chris Horton
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['alternate_ruby']['gem_bin_dir']       = '/usr/bin'
default['alternate_ruby']['source']            = 'brightbox'

default['alternate_ruby']['brightbox_repo'] = 'http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu'
default['alternate_ruby']['brightbox_key']        = 'C3173AA6'
default['alternate_ruby']['brightbox_keyserver']  = 'keyserver.ubuntu.com'
default['alternate_ruby']['brightbox_components'] = ['main']
default['alternate_ruby']['brightbox_package']    = 'ruby1.9.3'
