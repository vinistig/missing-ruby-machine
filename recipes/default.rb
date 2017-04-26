#
# Cookbook Name:: missing_ruby_machine
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

git_client 'default' do
	action :install
end

chef_gem 'rvm' do
  action :install
  version '>= 1.11.3.6'
end

require 'rvm'
create_rvm_shell_chef_wrapper
create_rvm_chef_user_environment
