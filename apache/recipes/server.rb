#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
#  action :create
#  content "<h1>Hello from chef!</h1> \
#<h2>ip: #{node['ipaddress']}</h2>
#<h3>hostname: #{node['hostname']}</h3>"
  source 'index.html.erb'
end

service 'httpd' do
  action [:enable, :start]
end
