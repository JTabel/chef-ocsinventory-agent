#
# Cookbook Name:: ocsinventory
# Recipe:: default
#
# Copyright 2015, Bigpoint GmbH
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

# We need to add the EPEL repo to have a ocsinventory-agent package
include_recipe 'ocsinventory::_yumrepo' if platform_family?('rhel')

# Package install
package node['ocsinventory']['agent']['package'] do
  action :install
end

# Template generation
template '/etc/ocsinventory/ocsinventory-agent.cfg' do
  source 'ocsinventory-agent.cfg.erb'
  action :create
end
