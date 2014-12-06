# == Class pdns::nameserver::params
#
# This class is meant to be called from pdns::nameserver
# It sets variables according to platform
#
class pdns::nameserver::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'pdns-server'
      $service_name = 'pdns'
      $config_path = '/etc/powerdns'
    }
    'RedHat', 'Amazon': {
      $package_name = 'pdns'
      $service_name = 'pdns'
      $config_path = '/etc/pdns'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
