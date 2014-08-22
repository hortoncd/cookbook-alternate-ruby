#
# Cookbook Name:: alternate_ruby
# Recipe:: unboxed
#
# Copyright 2013 - 2014, Chris Horton
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

if node['lsb']['codename'] == 'lucid'
  if node['kernel']['machine'] == 'x86_64'
    apt_repository 'unboxed' do
      uri          node['alternate_ruby']['unboxed_repo']
      key          node['alternate_ruby']['unboxed_key']
      components   node['alternate_ruby']['unboxed_components']
      distribution node['lsb']['codename']
      arch         'amd64'
    end
    package node['alternate_ruby']['unboxed_package']
  else
    raise "Unsupported machine architecture: #{node['kernel']['machine']}"
  end
else
  raise "Unsupported release: #{node['lsb']['codename']}"
end
