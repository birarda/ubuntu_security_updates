#
# Cookbook Name:: ubuntu_security_updates
# Recipe:: default
#
# Copyright 2012, Stephen Birarda
#

# install the unattended-upgrades package
package 'unattended-upgrades'

template '/etc/apt/apt.conf.d/10periodic' do
  source '10periodic.erb'
  owner 'root'
  group 'root'
  mode 0644
end