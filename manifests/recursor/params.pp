# == Class pdns::recursor::params
#
# This class is meant to be called from pdns::recursor
# It sets variables according to platform
#
class pdns::recursor::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'pdns-recursor'
      $service_name = 'pdns-recursor'
    }
    'RedHat', 'Amazon': {
      $package_name = 'pdns-recursor'
      $service_name = 'pdns-recursor'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
