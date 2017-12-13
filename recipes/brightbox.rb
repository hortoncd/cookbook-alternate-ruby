#
# Cookbook Name:: alternate_ruby
# Recipe:: brightbox
#
# Copyright 2013 - 2016, Chris Horton
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

apt_repository 'brightbox' do
  uri          node['alternate_ruby']['brightbox_repo']
  key          node['alternate_ruby']['brightbox_key']
  components   node['alternate_ruby']['brightbox_components']
  distribution node['lsb']['codename']
  keyserver    node['alternate_ruby']['brightbox_keyserver']
end

package node['alternate_ruby']['brightbox_package']

if node['alternate_ruby']['brightbox_package'] >= 'ruby2'
  package "#{node['alternate_ruby']['brightbox_package']}-dev"
end

node.override['alternate_ruby']['gem_bin_dir'] = '/usr/local/bin'
