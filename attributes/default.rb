#
# Cookbook Name:: haproxy
# Default:: default
#
# Copyright 2010, Opscode, Inc.
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

default['haproxy']['incoming_port'] = "80"
default['haproxy']['member_port'] = "8080"
default['haproxy']['enable_admin'] = true
default['haproxy']['app_server_role'] = "webserver"
default['haproxy']['balance_algorithm'] = "roundrobin"
default['haproxy']['member_max_connections'] = "100"
default['haproxy']['x_forwarded_for'] = false
default['haproxy']['enable_ssl'] = false
default['haproxy']['ssl_incoming_port'] = "443"
default['haproxy']['ssl_member_port'] = "8443"
default['haproxy']['dev']['src_dir'] = '/usr/local/haproxy-1.5'
default['haproxy']['dev']['download_url'] = "http://haproxy.1wt.eu/download/1.5/src/snapshot/haproxy-ss-20120403.tar.gz"
default['haproxy']['dev']['checksum'] = 'ba0424bf7d23b3a607ee24bbb855bb0ea347d7ffde0bec0cb12a89623cbaf911'
default['haproxy']['redis']['ip'] = "127.0.0.1"
default['haproxy']['redis']['port'] = 6379
