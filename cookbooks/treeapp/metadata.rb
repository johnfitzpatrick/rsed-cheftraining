maintainer       "JAF Company"
maintainer_email "john.fitzpatrick@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures tree app"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"

recipe "treeapp:install", "Install tree app"
