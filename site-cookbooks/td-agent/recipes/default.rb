#
# Cookbook Name:: td-agent
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 'Install td-agent' do
  # See http://docs.fluentd.org/articles/install-by-rpm
  command 'curl -L http://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh'
  not_if 'rpm -q td-agent'
end

service 'td-agent' do
  action [:enable, :start]
  supports restart: true, reload: true, status: true
end
