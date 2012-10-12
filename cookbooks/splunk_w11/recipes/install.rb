#
# Cookbook Name:: splunk_w11
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
rightscale_marker :begin

log "installing Splunk"

user node[:splunk][:user] do
action :create
system true
shell "/bin/bash"
end 


directory node[:splunk][:install] do   
owner  node[:splunk][:user]
mode "0755"   
action :create 
end 

remote_file "#{node[:splunk][:install]}/splunk.tar" do   
source node[:splunk][:installer]
action :create_if_missing 
end 

bash "install_splunk" do
cwd node[:splunk][:install]
code <<-EOH
tar -xvf splunk.tar
EOH
end 

rightscale_marker :end
