maintainer       "Your Company"
maintainer_email "email@example.com"
license          "All rights reserved"
description      "Installs tree_app"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"

recipe "tree_app::install", "Install tree app"
