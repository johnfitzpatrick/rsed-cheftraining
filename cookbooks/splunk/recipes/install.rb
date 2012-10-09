#
# Cookbook Name:: splunk
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user node[:splunk][:user] do
 action :create
 system true
 shell "/bin/false"
end 


directory node[:splunk][:install] do   
 owner "splunk"
 mode "0755"   
 action :create 
end 

cookbook_file "#{Chef::Config[:file_cache_path]}/splunk.tar" do   
 source node[:splunk][:installer]
 action :create_if_missing 
end 

bash "install_splunk" do
 cwd node[:splunk][:install]
 code <<-EOH
  cp Chef::Config[:file_cache_path]/splunk.tar .
  tar -xvf splunk.tar
 EOH
end 

