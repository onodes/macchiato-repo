#
# Cookbook Name:: app
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
package 'httpd'

service 'httpd' do
  action [ :enable, :start ]
end

include_recipe 'app::mysql_service'

file '/var/www/html/index.html' do
  content "<h1>Hello, World</h1>"
end
