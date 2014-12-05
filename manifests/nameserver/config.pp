# == Class pdns::nameserver::config
#
# This class is called from pdns::nameserver
#
class pdns::nameserver::config (
  $backend        = 'sqlite'
) {
  if $backend == undef {
    fail('pdns::nameserver::config backend parameter is required')
  }
  # defaults
  File {
    owner => 'pdns',
    group => 'pdns',
  }
  file { '/etc/pdns/pdns.conf':
    ensure  => present,
    mode    => '0400',
    content => template('pdns/nameserver/pdns.conf.erb'),
    require => Package['pdns'],
    notify  => Class['pdns::nameserver::service'],
  }
  file { '/var/pdns':
    ensure  => directory,
    mode    => '0755',
    require => Package['pdns'],
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