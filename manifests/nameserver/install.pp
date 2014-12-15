# == Class pdns::nameserver::install
#
# This class is called from pdns::nameserver
#
# === Variables
#
# See pdns::nameserver::params for details.
#
class pdns::nameserver::install {

  case $::pdns::nameserver::package_ensure {
    true:     {
      $my_package_ensure = 'present'
    }
    false:    {
      $my_package_ensure = 'absent'
    }
    'absent': {
      $my_package_ensure = 'absent'
    }
    'purged': {
      $my_package_ensure = 'purged'
    }
    default:  {
      $my_package_ensure = $::pdns::nameserver::package_ensure
    }
  }

  package { $pdns::nameserver::package_name:
    ensure => $my_package_ensure,
  }

  case $::pdns::nameserver::backend {
    'mysql': {
      package { 'pdns-backend-mysql':
        ensure => $my_package_ensure,
      }
      #TODO: Do something with provided schema's
    }
    'postgresql': {
      package { 'pdns-backend-postgresql':
        ensure => $my_package_ensure,
      }
      #TODO: Do something with provided schema's
    }
    'sqlite': {
      package { 'sqlite':
        ensure => installed
      }
      package { 'pdns-backend-sqlite':
        ensure => $my_package_ensure,
      }
      #TODO: Do something with provided schema's
    }
    default: {
      fail("Unknown backend - valid values are 'mysql', 'postgresql' or 'sqlite'")
    }
  }
}
