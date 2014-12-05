# == Class pdns::install
#
# This class is called from pdns for install.
#
class pdns::install {

  package { $::pdns::package_name:
    ensure => present,
  }
}
