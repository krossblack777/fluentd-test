#
# Cookbook Name:: rails_required
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
%w(gcc-c++ glibc-headers openssl-devel readline libyaml-devel readline-devel zlib zlib-devel).each do |pkg|
  package pkg do
    action :install
  end
end
