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

package_name = value_for_platform(
  ["centos", "redhat"] => { "default" => "tree" },
    ["ubuntu", "debian"] => { "default" => "tree" }
    )

log "The package that will be installed is #{package_name}"

package package_name do
  action :install
  end

rightscale_marker :end
