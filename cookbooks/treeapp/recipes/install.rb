#
# Cookbook Name:: treeapp
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rightscale_marker :begin
log "installing tree"

package "tree" do
  action :install
end

rightscale_marker :end
