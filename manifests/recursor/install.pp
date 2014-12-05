# == Class pdns::recursor::install
#
class pdns::recursor::install {

  package { $pdns::recursor::package_name:
    ensure => present,
  }
}
