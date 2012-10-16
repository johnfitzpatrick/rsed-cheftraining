#
# Cookbook Name:: hello_world
# Recipe:: default
#
# Copyright 2012, RightScale <ryan.geyer@rightscale.com>
#
# All rights reserved - Do Not Redistribute
#

log "Hello world! My name is #{node[:hello_world][:name]}"
