#
# Cookbook Name:: biryani
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


#include_recipe 'biryani::recipe1'

package 'httpd'

service 'httpd' do
  action [:start, :enable]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

service 'iptables' do
  action :stop
end
