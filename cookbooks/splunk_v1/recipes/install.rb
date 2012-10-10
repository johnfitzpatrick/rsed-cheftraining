#
# Cookbook Name:: splunk
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

log "Installing Splunk - version 1"

user "splunk" do
 action :create
 system true
 shell "/bin/false"
end 


directory "/opt" do   
 owner "splunk"
 mode "0755"   
 action :create 
end 

remote_file "/opt/splunk.tar" do   
 source "https://rs-training-assets.s3.amazonaws.com/splunk-4.3.4-136012-Linux-x86_64.tar"
  action :create_if_missing 
  end 

bash "install_splunk" do
 cwd "/opt"
 code <<-EOH
  tar -xvf splunk.tar
 EOH
end 

rightscale_marker :end

