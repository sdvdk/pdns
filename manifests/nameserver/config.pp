# == Class pdns::nameserver::config
#
# This class is called from pdns::nameserver
#
# === Parameters
#
# [backend]
#   Default set to sqlite. 
#   Sets the backend used by PowerDNS nameserver.
#   Currently only mysql, postgresql and sqlite are supported.
#
class pdns::nameserver::config (
  $backend        = 'sqlite',
  $listen_address = '127.0.0.1'
) {
  if $backend == undef {
    fail('pdns::nameserver::config backend parameter is required')
  }
  # # defaults
  # File {
  #   owner => 'pdns',
  #   group => 'pdns',
  # }
  file { "${pdns::nameserver::config_path}/pdns.conf":
    ensure  => present,
    mode    => '0600',
    content => template('pdns/nameserver/pdns.conf.erb'),
    require => Package[$pdns::nameserver::package_name],
    notify  => Class['pdns::nameserver::service'],
  }
  file { '/var/pdns':
    ensure  => directory,
    mode    => '0755',
    require => Package[$pdns::nameserver::package_name],
  }
  case $backend {
    'mysql': {
      file { '/var/pdns/schema.sql':
        ensure  => present,
        mode    => '0444',
        source  => 'puppet:///modules/pdns/nameserver/mysql-schema.sql',
        require => File['/var/pdns'],
      }
    }
    'postgresql': {
      file { '/var/pdns/schema.sql':
        ensure  => present,
        mode    => '0444',
        source  => 'puppet:///modules/pdns/nameserver/postgresql-schema.sql',
        require => File['/var/pdns'],
      }
    }
    'sqlite': {
      file { '/var/pdns/schema.sql':
        ensure  => present,
        mode    => '0444',
        source  => 'puppet:///modules/pdns/nameserver/sqlite-schema.sql',
        require => File['/var/pdns'],
      }
    }
    default: {
      fail("unknown backend - valid values are 'mysql', 'postgresql' or 'sqlite'")
    }
  }
}