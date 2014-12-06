# == Class pdns::recursor::config
#
# This class is called from pdns::recursor
#
class pdns::recursor::config (
  $listen_address = '127.0.0.1'
) {
  # # defaults
  # File {
  #   owner => 'pdns-recursor',
  #   group => 'pdns-recursor',
  # }
  file { "${pdns::nameserver::config_path}/recursor.conf":
    ensure  => present,
    mode    => '0644',
    content => template('pdns/recursor/recursor.conf.erb'),
    require => Package[$::pdns::recursor::package_name],
    notify  => Class['pdns::recursor::service'],
  }
}
