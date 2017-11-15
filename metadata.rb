name             'jenkins-chef-dsl'
maintainer       'Eric Helgeson'
maintainer_email 'erichelgeson@gmail.com'
license          'Apache 2'
description      'Installs/Configures jenkins-chef-dsl'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.3'

depends 'jenkins'
depends 'chef-sugar', '~> 3.6.0'
depends 'git', '~> 8.0.0'
depends 'apt'
depends 'artifactory', '0.3.4'
depends 'java', '~> 1.50.0'
depends 'selinux_policy', '~> 2.0.1'
depends 'yum'

supports 'ubuntu'
supports 'centos'
