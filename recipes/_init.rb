#
# Cookbook Name:: haproxy
# Recipe:: _init
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

haproxy_bin = "#{node['haproxy']['dest_dir']}/bin/haproxy"
haproxy_config = "#{node['haproxy']['config_dir']}/#{node['haproxy']['config_file_name']}"

# This should more inteligently determine which haproxy to use.
execute "haproxy_check_config" do
  command "#{haproxy_bin} -c -f #{haproxy_config}"
  notifies :reload, "service[haproxy]"
  action :nothing
end

case node['haproxy']['init_style']
  when "runit"
    include_recipe "runit"
    runit_service "haproxy" do
      options({
        :haproxy_bin => haproxy_bin,
        :haproxy_config => haproxy_config
      }).merge(params)
    end
  when "init"
    service "haproxy" do
      supports :restart => true, :status => true, :reload => true
      action [:enable, :start]
    end
end
