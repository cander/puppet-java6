# Public: installs java jdk 6u65
#
# Examples
#
#    include java6
class java6 {
  include boxen::config

  package { 'jdk6_u65':
    alias    => 'jdk6',
    ensure   => installed,
    source   => 'https://s3-us-west-2.amazonaws.com/image-dist/jdk6-u65_2013005.dmg',
    provider => 'pkgdmg'
  }

  $wrapper = "${boxen::config::bindir}/java"

  file { $wrapper:
    source  => 'puppet:///modules/java6/java.sh',
    mode    => '0755',
    require => Package['jdk6']
  }

}
