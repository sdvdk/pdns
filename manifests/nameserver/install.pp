# == Class pdns::nameserver::install
#
class pdns::nameserver::install {

  package { $pdns::nameserver::package_name:
    ensure => present,
  }
}
