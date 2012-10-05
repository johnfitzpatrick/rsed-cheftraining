[33mcommit fd26c94ba32f6bcd00d8b4b470db8d2b51f2a679[m
Author: johnfitzpatrick <john.fitzpatrick@rightscale.com>
Date:   Thu Oct 4 17:25:06 2012 +0000

    updated tree install recipe

[1mdiff --git a/cookbooks/jaf001/recipes/default.rb b/cookbooks/jaf001/recipes/default.rb[m
[1mindex eddeb45..fc01dd2 100644[m
[1m--- a/cookbooks/jaf001/recipes/default.rb[m
[1m+++ b/cookbooks/jaf001/recipes/default.rb[m
[36m@@ -7,4 +7,4 @@[m
 # All rights reserved - Do Not Redistribute[m
 #[m
 [m
[31m-log "This is default recipe in cookbook jaf001"[m
[32m+[m[32mlog "This is default recipe in cookbook jaf001 - Oct 4th"[m
[1mdiff --git a/cookbooks/treeapp/recipes/install.rb b/cookbooks/treeapp/recipes/install.rb[m
[1mindex 87505be..6660a5a 100644[m
[1m--- a/cookbooks/treeapp/recipes/install.rb[m
[1m+++ b/cookbooks/treeapp/recipes/install.rb[m
[36m@@ -9,8 +9,15 @@[m
 rightscale_marker :begin[m
 log "installing tree"[m
 [m
[31m-package "tree" do[m
[31m- action :install[m
[31m-end[m
[32m+[m[32mpackage_name = value_for_platform([m
[32m+[m[32m  ["centos", "redhat"] => { "default" => "tree" },[m
[32m+[m[32m    ["ubuntu", "debian"] => { "default" => "tree" }[m
[32m+[m[32m    )[m
[32m+[m
[32m+[m[32mlog "The package that will be installed is #{package_name}"[m
[32m+[m
[32m+[m[32mpackage package_name do[m
[32m+[m[32m  action :install[m
[32m+[m[32m  end[m
 [m
 rightscale_marker :end[m
[1mdiff --git a/cookbooks/treeapp/recipes/install.rb.ORIG b/cookbooks/treeapp/recipes/install.rb.ORIG[m
[1mnew file mode 100644[m
[1mindex 0000000..87505be[m
[1m--- /dev/null[m
[1m+++ b/cookbooks/treeapp/recipes/install.rb.ORIG[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m#[m
[32m+[m[32m# Cookbook Name:: treeapp[m
[32m+[m[32m# Recipe:: default[m
[32m+[m[32m#[m
[32m+[m[32m# Copyright 2012, YOUR_COMPANY_NAME[m
[32m+[m[32m#[m
[32m+[m[32m# All rights reserved - Do Not Redistribute[m
[32m+[m[32m#[m
[32m+[m[32mrightscale_marker :begin[m
[32m+[m[32mlog "installing tree"[m
[32m+[m
[32m+[m[32mpackage "tree" do[m
[32m+[m[32m action :install[m
[32m+[m[32mend[m
[32m+[m
[32m+[m[32mrightscale_marker :end[m
