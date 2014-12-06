# == Class: pdns::nameserver
#
# Full description of class pdns::nameserver here.
#
class pdns::nameserver inherits ::pdns::nameserver::params {
  class { '::pdns::nameserver::install': } ->
  class { '::pdns::nameserver::config': } ~>
  class { '::pdns::nameserver::service': } ->
  Class['::pdns::nameserver']
}