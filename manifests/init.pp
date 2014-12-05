# == Class: pdns
#
# Full description of class pdns here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class pdns (
  $package_name = $::pdns::params::package_name,
  $service_name = $::pdns::params::service_name,
) inherits ::pdns::params {

  # validate parameters here

  class { '::pdns::install': } ->
  class { '::pdns::config': } ~>
  class { '::pdns::service': } ->
  Class['::pdns']
}
