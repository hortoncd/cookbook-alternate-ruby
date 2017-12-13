#
# Cookbook Name:: alternate_ruby
# Test:: default
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

require 'spec_helper'

describe 'alternate_ruby::default' do
  describe file('/etc/apt/sources.list.d/brightbox.list') do
    it { should exist }
  end

  %w{ ruby2.2 ruby2.2-dev }.each do |p|
    describe package(p) do
      it { should be_installed }
    end
  end
end
