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

