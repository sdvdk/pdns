# == Class pdns::recursor::config
#
# This class is called from pdns::recursor
#
class pdns::recursor::config {
  # defaults
  File {
    owner => 'pdns-recursor',
    group => 'pdns-recursor',
  }
  file { '/etc/pdns-recursor/recursor.conf':
    ensure  => present,
    mode    => '0444',
    content => template('pdns/recursor/recursor.conf.erb'),
    require => Package[$::pdns::recursor::package_name],
    notify  => Class['pdns::recursor::service'],
  }
}
