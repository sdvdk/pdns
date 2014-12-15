# == Class pdns::recursor::install
#
# This class is called from pdns::recursor
#
# === Variables
#
# See pdns::recursor::params for details.
#
class pdns::recursor::install {

  case $::pdns::recursor::package_ensure {
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
      $my_package_ensure = $::pdns::recursor::package_ensure
    }
  }

  package { $pdns::recursor::package_name:
    ensure => $my_package_ensure,
  }
}
