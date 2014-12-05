# == Class pdns::recursor::service
#
# This class is meant to be called from pdns
# It ensure the service is running
#
class pdns::recursor::service {

  service { $pdns::recursor::params::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
