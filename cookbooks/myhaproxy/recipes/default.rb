#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

 node.default['haproxy']['members'] =  [
{
    "hostname" => "ec2-34-244-7-124.eu-west-1.compute.amazonaws.com",
    "ipaddress" => "34.244.7.124",
    "port" => 80,
    "ssl_port" => 80
  }, {
    "hostname" => "ec2-34-242-232-221.eu-west-1.compute.amazonaws.com",
    "ipaddress" => "34.242.232.221",
    "port" => 80,
    "ssl_port" => 80
  }]

include_recipe 'haproxy::default'
