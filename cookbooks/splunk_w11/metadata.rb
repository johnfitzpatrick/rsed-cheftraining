maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures splunk_w11"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"
recipe "splunk_w11::install", "Installs splunk from a tar a file - V2"


attribute "splunki_w11/user",
:display_name => "Splunk User",
:description => "The name of the Splunk user",
:recipes => ["splunk_w11::install"],
:required => "required"


