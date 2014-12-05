# == Class pdns::params
#
# This class is meant to be called from pdns.
# It sets variables according to platform.
#
class pdns::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'pdns'
      $service_name = 'pdns'
    }
    'RedHat', 'Amazon': {
      $package_name = 'pdns'
      $service_name = 'pdns'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
