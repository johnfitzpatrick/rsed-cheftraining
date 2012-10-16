maintainer       "RightScale"
maintainer_email "ryan.geyer@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures hello_world"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

recipe "hello_world::default", "Prints hello world to the audit entry"

attribute "hello_world/name",
  :display_name => "Your Name",
  :description => "Please enter your name",
  :required => "required", 
  :recipes => [ "hello_world::default" ]
