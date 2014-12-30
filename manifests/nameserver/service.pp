# == Class pdns::nameserver::service
#
# This class is meant to be called from pdns::nameserver
# It ensure the service is running
#
# === Variables
#
# See pdns::nameserver::params for details.
#
class pdns::nameserver::service {

  if ($::pdns::nameserver::package_ensure == 'present' or $::pdns::nameserver::package_ensure == true) {
      case $::pdns::nameserver::service_ensure {
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

      service { $pdns::nameserver::params::service_name:
        ensure     => $service_ensure,
        enable     => $service_enable,
        hasstatus  => true,
        hasrestart => true,
      }
  } else {
    notify { 'Service Unavailable':
        message => 'PowerDNS nameserver service is unavailable or the package is going to be removed.',
    }
  }
}
