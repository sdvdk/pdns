# == Class: pdns::nameserver
#
# Full description of class pdns::nameserver here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class pdns::nameserver inherits ::pdns::nameserver::params {
  class { '::pdns::nameserver::install': } ->
  class { '::pdns::nameserver::config': } ~>
  class { '::pdns::nameserver::service': } ->
  Class['::pdns::nameserver']
}