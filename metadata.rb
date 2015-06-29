name 'ocsinventory-agent'
maintainer 'Bigpoint GmbH'
maintainer_email 'd.pattmann@bigpoint.net'
license 'Apache 2.0'
description 'Installs/Configures ocsinventory-agent'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.0.0'

supports 'ubuntu'
supports 'centos'

depends 'apt'
depends 'yum'
