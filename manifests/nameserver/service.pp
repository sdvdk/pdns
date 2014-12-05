# == Class pdns::nameserver::service
#
# This class is meant to be called from pdns::nameserver
# It ensure the service is running
#
class pdns::nameserver::service {

  service { $pdns::nameserver::params::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
