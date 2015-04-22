#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node[:platform_version] =~ /\A7\./
  rpm = 'nginx-release-centos-7-0.el7.ngx.noarch.rpm'
  rpm_path = 'http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm'
else
  rpm = 'nginx-release-centos-6-0.el6.ngx.noarch.rpm'
  rpm_path = 'http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm'
end

nginx_rpm = File.join('/usr/local/src', rpm)

remote_file nginx_rpm do
  source rpm_path
  action :create_if_missing
end

rpm_package 'nginx-release' do
  source nginx_rpm
  action :install
end

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
  supports restart: true
end

cookbook_file "/etc/nginx/nginx.conf" do
  notifies :restart, 'service[nginx]'
end

directory '/var/www'

directory '/var/www/test'
