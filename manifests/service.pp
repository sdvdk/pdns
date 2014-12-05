# == Class pdns::service
#
# This class is meant to be called from pdns.
# It ensure the service is running.
#
class pdns::service {

  service { $::pdns::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
