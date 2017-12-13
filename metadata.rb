maintainer       'Chris Horton'
maintainer_email 'hortoncd@gmail.com'
license          'Apache-2.0'
name             'alternate_ruby'
description      'Installs/Configures assorted non-standard ruby packages'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url       'https://github.com/hortoncd/cookbook-alternate-ruby'
issues_url       'https://github.com/hortoncd/cookbook-alternate-ruby/issues'
chef_version     '>= 12.0'
version          '0.1.1'

supports 'ubuntu'

depends 'apt'
