# == Class pdns::nameserver::config
#
# This class is meant to be called from pdns::nameserver
#
# === Variables
#
# See pdns::nameserver::params for details.
#
class pdns::nameserver::config {
  $package_ensure                     = $::pdns::nameserver::package_ensure
  $service_ensure                     = $::pdns::nameserver::service_ensure
  $backend                            = $::pdns::nameserver::backend
  $backend_host                       = $::pdns::nameserver::backend_host
  $backend_user                       = $::pdns::nameserver::backend_user
  $backend_dbname                     = $::pdns::nameserver::backend_dbname
  $backend_password                   = $::pdns::nameserver::backend_password
  $backend_dbpath                     = $::pdns::nameserver::backend_dbpath
  $setgid                             = $::pdns::nameserver::setgid
  $setuid                             = $::pdns::nameserver::setuid
  $add_superfluous_nsec3_for_old_bind = $::pdns::nameserver::add_superfluous_nsec3_for_old_bind
  $allow_axfr_ips                     = $::pdns::nameserver::allow_axfr_ips
  $allow_recursion                    = $::pdns::nameserver::allow_recursion
  $any_to_tcp                         = $::pdns::nameserver::any_to_tcp
  $cache_ttl                          = $::pdns::nameserver::cache_ttl
  $chroot                             = $::pdns::nameserver::chroot
  $config_dir                         = $::pdns::nameserver::config_dir
  $config_name                        = $::pdns::nameserver::config_name
  $control_console                    = $::pdns::nameserver::control_console
  $daemon                             = $::pdns::nameserver::daemon
  $default_ksk_algorithms             = $::pdns::nameserver::default_ksk_algorithms
  $default_ksk_size                   = $::pdns::nameserver::default_ksk_size
  $default_soa_mail                   = $::pdns::nameserver::default_soa_mail
  $default_soa_name                   = $::pdns::nameserver::default_soa_name
  $default_ttl                        = $::pdns::nameserver::default_ttl
  $default_zsk_algorithms             = $::pdns::nameserver::default_zsk_algorithms
  $default_zsk_size                   = $::pdns::nameserver::default_zsk_size
  $direct_dnskey                      = $::pdns::nameserver::direct_dnskey
  $disable_axfr                       = $::pdns::nameserver::disable_axfr
  $disable_tcp                        = $::pdns::nameserver::disable_tcp
  $distributor_threads                = $::pdns::nameserver::distributor_threads
  $do_ipv6_additional_processing      = $::pdns::nameserver::do_ipv6_additional_processing
  $edns_subnet_option_number          = $::pdns::nameserver::edns_subnet_option_number
  $edns_subnet_processing             = $::pdns::nameserver::edns_subnet_processing
  $entropy_source                     = $::pdns::nameserver::entropy_source
  $experimental_json_interface        = $::pdns::nameserver::experimental_json_interface
  $experimental_logfile               = $::pdns::nameserver::experimental_logfile
  $fancy_records                      = $::pdns::nameserver::fancy_records
  $guardian                           = $::pdns::nameserver::guardian
  $include_dir                        = $::pdns::nameserver::include_dir
  $load_modules                       = $::pdns::nameserver::load_modules
  $local_address                      = $::pdns::nameserver::local_address
  $local_ipv6                         = $::pdns::nameserver::local_ipv6
  $local_port                         = $::pdns::nameserver::local_port
  $log_dns_details                    = $::pdns::nameserver::log_dns_details
  $log_dns_queries                    = $::pdns::nameserver::log_dns_queries
  $log_failed_updates                 = $::pdns::nameserver::log_failed_updates
  $logging_facility                   = $::pdns::nameserver::logging_facility
  $log_level                          = $::pdns::nameserver::log_level
  $lua_prequery_script                = $::pdns::nameserver::lua_prequery_script
  $master                             = $::pdns::nameserver::master
  $max_cache_entries                  = $::pdns::nameserver::max_cache_entries
  $max_ent_entries                    = $::pdns::nameserver::max_ent_entries
  $max_queue_length                   = $::pdns::nameserver::max_queue_length
  $max_tcp_connections                = $::pdns::nameserver::max_tcp_connections
  $module_dir                         = $::pdns::nameserver::module_dir
  $negquery_cache_ttl                 = $::pdns::nameserver::negquery_cache_ttl
  $no_shuffle                         = $::pdns::nameserver::no_shuffle
  $out_of_zone_additional_processing  = $::pdns::nameserver::out_of_zone_additional_processing
  $overload_queue_length              = $::pdns::nameserver::overload_queue_length
  $pipebackend_abi_version            = $::pdns::nameserver::pipebackend_abi_version
  $prevent_self_notification          = $::pdns::nameserver::prevent_self_notification
  $query_cache_ttl                    = $::pdns::nameserver::query_cache_ttl
  $query_local_address                = $::pdns::nameserver::query_local_address
  $query_local_address6               = $::pdns::nameserver::query_local_address6
  $query_logging                      = $::pdns::nameserver::query_logging
  $queue_limit                        = $::pdns::nameserver::queue_limit
  $receiver_threads                   = $::pdns::nameserver::receiver_threads
  $recursive_cache_ttl                = $::pdns::nameserver::recursive_cache_ttl
  $recursor                           = $::pdns::nameserver::recursor
  $retrieval_threads                  = $::pdns::nameserver::retrieval_threads
  $send_root_referral                 = $::pdns::nameserver::send_root_referral
  $server_id                          = $::pdns::nameserver::server_id
  $signing_threads                    = $::pdns::nameserver::signing_threads
  $slave                              = $::pdns::nameserver::slave
  $slave_cycle_interval               = $::pdns::nameserver::slave_cycle_interval
  $slave_renotify                     = $::pdns::nameserver::slave_renotify
  $smtpredirector                     = $::pdns::nameserver::smtpredirector
  $soa_expire_default                 = $::pdns::nameserver::soa_expire_default
  $soa_minimum_ttl                    = $::pdns::nameserver::soa_minimum_ttl
  $soa_refresh_default                = $::pdns::nameserver::soa_refresh_default
  $soa_retry_default                  = $::pdns::nameserver::soa_retry_default
  $soa_serial_offset                  = $::pdns::nameserver::soa_serial_offset
  $socket_dir                         = $::pdns::nameserver::socket_dir
  $tcp_control_address                = $::pdns::nameserver::tcp_control_address
  $tcp_control_port                   = $::pdns::nameserver::tcp_control_port
  $tcp_control_range                  = $::pdns::nameserver::tcp_control_range
  $tcp_control_secret                 = $::pdns::nameserver::tcp_control_secret
  $traceback_handler                  = $::pdns::nameserver::traceback_handler
  $trusted_notification_proxy         = $::pdns::nameserver::trusted_notification_proxy
  $urlredirector                      = $::pdns::nameserver::urlredirector
  $version_string                     = $::pdns::nameserver::version_string
  $webserver                          = $::pdns::nameserver::webserver
  $webserver_address                  = $::pdns::nameserver::webserver_address
  $webserver_password                 = $::pdns::nameserver::webserver_password
  $webserver_port                     = $::pdns::nameserver::webserver_port
  $webserver_print_arguments          = $::pdns::nameserver::webserver_print_arguments
  $wildcard_url                       = $::pdns::nameserver::wildcard_url

  if $backend == undef {
    fail('pdns::nameserver::config backend parameter is required')
  }

  case $package_ensure {
    true:     {
      $file_ensure     = 'present'
      $dir_ensure      = 'directory'
    }
    false:    {
      $file_ensure     = 'absent'
      $dir_ensure      = 'absent'
    }
    'absent': {
      $file_ensure     = 'absent'
      $dir_ensure      = 'absent'
    }
    'purged': {
      $file_ensure     = 'absent'
      $dir_ensure      = 'absent'
    }
    default:  {
      $file_ensure     = 'present'
      $dir_ensure      = 'directory'
    }
  }

  file { "${pdns::nameserver::config_path}/pdns.conf":
    ensure  => $file_ensure,
    mode    => '0600',
    content => template('pdns/nameserver/pdns.conf.erb'),
  }

  file { '/var/pdns':
    ensure => $dir_ensure,
    mode   => '0755',
  }

  case $backend {
    'mysql': {
      file { '/var/pdns/schema.sql':
        ensure => $file_ensure,
        mode   => '0444',
        source => 'puppet:///modules/pdns/nameserver/mysql-schema.sql',
      }
    }
    'postgresql': {
      file { '/var/pdns/schema.sql':
        ensure => $file_ensure,
        mode   => '0444',
        source => 'puppet:///modules/pdns/nameserver/postgresql-schema.sql',
      }
    }
    'sqlite': {
      file { '/var/pdns/schema.sql':
        ensure => $file_ensure,
        mode   => '0444',
        source => 'puppet:///modules/pdns/nameserver/sqlite-schema.sql',
      }

      exec { 'built-sqlite-db':
        command => 'sqlite3 /var/pdns/powerdns.sqlite3 < /var/pdns/schema.sql',
        path    => '/usr/bin/',
        creates => '/var/pdns/powerdns.sqlite3',
        require => File['/var/pdns/schema.sql']
      }

      file { '/var/pdns/powerdns.sqlite3':
        ensure  => $file_ensure,
        owner   => 'pdns',
        group   => 'pdns',
        mode    => '0600',
        require => Exec['built-sqlite-db']
      }
    }
    default: {
      fail("unknown backend - valid values are 'mysql', 'postgresql' or 'sqlite'")
    }
  }
}