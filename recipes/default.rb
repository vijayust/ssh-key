#
# Cookbook Name:: ssh-key
# Recipe:: default
#
# Copyright 2016, Kaveri
#
# All rights reserved - Do Not Redistribute
#

# Create .ssh directory in go home directory
directory "#{node["dir"]}" do
 owner "go"
 group "go"
 mode "0700"
action :create
end

# Copy ssh rsa file to .ssh directory
cookbook_file "#{node["dir"]}/id_rsa" do
 source "id_rsa"
 owner "go"
 group "go"
 mode "0600"
action :create
end

# Copy ssh pub file to .ssh directory
cookbook_file "#{node["dir"]}/id_rsa.pub" do
 source "id_rsa.pub"
 owner "go"
 group "go"
 mode "0644"
action :create
end

# Copy known_hosts file to .ssh directory
cookbook_file "#{node["dir"]}/known_hosts" do
 source "known_hosts"
 owner "go"
 group "go"
 mode "0644"
action :create
end
