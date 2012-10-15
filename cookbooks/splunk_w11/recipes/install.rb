
# Cookbook Name:: splunk_w11
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
rightscale_marker :begin

log "installing Splunk"

set_user "#{node[:splunk_w11][:user]}"
#set_user "splunk_w11"

directory node[:splunk_w11][:install] do   
owner node[:splunk_w11][:user]
mode "0755"   
action :create 
end 

remote_file "#{node[:splunk_w11][:install]}/splunk.tar" do   
source node[:splunk_w11][:installer]
action :create_if_missing 
end 

bash "install_splunk" do
cwd node[:splunk_w11][:install]
code <<-EOH
tar -xvf splunk.tar
EOH
end 

rightscale_marker :end
