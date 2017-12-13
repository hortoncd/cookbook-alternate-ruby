#
# Cookbook Name:: alternate_ruby
# Spec:: default
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
  versions = %w{ 14.04 16.04 }
  versions.each do |v|
    ruby_versions = %w{ 1.9.3 2.2 2.4 }
    ruby_versions.each do |rv|
      context 'When all attributes are default, on a ubuntu platform' do
        let(:chef_run) {
          runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: v) do |node|
            node.override['alternate_ruby']['brightbox_package'] = "ruby#{rv}" unless rv == '1.9.3'
          end
          runner.converge(described_recipe)
        }

        it 'converges successfully' do
          expect { chef_run }.to_not raise_error
        end

        it 'includes alternate_ruby::brightbox recipe' do
          expect(chef_run).to include_recipe('alternate_ruby::brightbox')
        end

        it "installs ruby#{rv}" do
          #chef_run.node.override['alternate_ruby']['brightbox_package'] = "ruby#{rv}" unless rv == '1.9.3'
          expect(chef_run).to install_package("ruby#{rv}")
        end

        %w{ python-software-properties }.each do |p|
          it "installs #{p}" do
            expect(chef_run).to install_package(p)
          end
        end
      end
    end
  end
end
