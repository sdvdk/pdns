# == Class pdns::recursor::service
#
# This class is meant to be called from pdns::recursor
# It ensure the service is running
#
# === Variables
#
# See pdns::recursor::params for details.
#
class pdns::recursor::service {

  if ($::pdns::recursor::package_ensure == 'present' or $::pdns::recursor::package_ensure == true) {
      case $::pdns::recursor::service_ensure {
        true:     {
          $service_ensure = 'running'
          $service_enable     = true
        }
        false:    {
          $service_ensure = 'stopped'
          $service_enable     = false
        }
        'stopped': {
          $service_ensure = 'stopped'
          $service_enable     = false
        }
        default:  {
          $service_ensure = 'running'
          $service_enable     = true
        }
      }

      service { $pdns::recursor::params::service_name:
        ensure     => $service_ensure,
        enable     => $service_enable,
        hasstatus  => true,
        hasrestart => true,
      }
  } else {
    notify { 'Service Unavailable':
        message => 'PowerDNS recursor service is unavailable or the package is going to be removed.',
    }
  }
}
