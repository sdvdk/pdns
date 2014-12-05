# == Class: pdns::recursor
#
# Full description of class pdns::recursor here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class pdns::recursor inherits ::pdns::recursor::params {
  class { '::pdns::recursor::install': } ->
  class { '::pdns::recursor::config': } ~>
  class { '::pdns::recursor::service': } ->
  Class['::pdns::recursor']
}