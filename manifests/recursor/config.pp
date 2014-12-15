# == Class pdns::recursor::config
#
# This class is meant to be called from pdns::recursor
#
# === Variables
#
# See pdns::recursor::params for details.
#
class pdns::recursor::config {
  $package_ensure                  = $::pdns::recursor::package_ensure
  $service_ensure                  = $::pdns::recursor::service_ensure
  $setgid                          = $::pdns::recursor::setgid
  $setuid                          = $::pdns::recursor::setuid
  $allow_from                      = $::pdns::recursor::allow_from
  $allow_from_file                 = $::pdns::recursor::allow_from_file
  $any_to_tcp                      = $::pdns::recursor::any_to_tcp
  $auth_zones                      = $::pdns::recursor::auth_zones
  $carbon_interval                 = $::pdns::recursor::carbon_interval
  $carbon_ourname                  = $::pdns::recursor::carbon_ourname
  $carbon_server                   = $::pdns::recursor::carbon_server
  $chroot                          = $::pdns::recursor::chroot
  $client_tcp_timeout              = $::pdns::recursor::client_tcp_timeout
  $config_dir                      = $::pdns::recursor::config_dir
  $config_name                     = $::pdns::recursor::config_name
  $daemon                          = $::pdns::recursor::daemon
  $delegation_only                 = $::pdns::recursor::delegation_only
  $disable_edns                    = $::pdns::recursor::disable_edns
  $disable_packetcache             = $::pdns::recursor::disable_packetcache
  $dont_query                      = $::pdns::recursor::dont_query
  $entropy_source                  = $::pdns::recursor::entropy_source
  $etc_hosts_file                  = $::pdns::recursor::etc_hosts_file
  $experimental_api_config_dir     = $::pdns::recursor::experimental_api_config_dir
  $experimental_api_key            = $::pdns::recursor::experimental_api_key
  $experimental_api_readonly       = $::pdns::recursor::experimental_api_readonly
  $experimental_logfile            = $::pdns::recursor::experimental_logfile
  $experimental_webserver          = $::pdns::recursor::experimental_webserver
  $experimental_webserver_address  = $::pdns::recursor::experimental_webserver_address
  $experimental_webserver_password = $::pdns::recursor::experimental_webserver_password
  $experimental_webserver_port     = $::pdns::recursor::experimental_webserver_port
  $export_etc_hosts                = $::pdns::recursor::export_etc_hosts
  $export_etc_hosts_search_suffix  = $::pdns::recursor::export_etc_hosts_search_suffix
  $forward_zones                   = $::pdns::recursor::forward_zones
  $forward_zones_file              = $::pdns::recursor::forward_zones_file
  $forward_zones_recurse           = $::pdns::recursor::forward_zones_recurse
  $hint_file                       = $::pdns::recursor::hint_file
  $include_dir                     = $::pdns::recursor::include_dir
  $latency_statistic_size          = $::pdns::recursor::latency_statistic_size
  $local_address                   = $::pdns::recursor::local_address
  $local_port                      = $::pdns::recursor::local_port
  $log_common_errors               = $::pdns::recursor::log_common_errors
  $logging_facility                = $::pdns::recursor::logging_facility
  $log_level                       = $::pdns::recursor::log_level
  $lua_dns_script                  = $::pdns::recursor::lua_dns_script
  $max_cache_entries               = $::pdns::recursor::max_cache_entries
  $max_cache_ttl                   = $::pdns::recursor::max_cache_ttl
  $max_mthreads                    = $::pdns::recursor::max_mthreads
  $max_negative_ttl                = $::pdns::recursor::max_negative_ttl
  $max_packetcache_entries         = $::pdns::recursor::max_packetcache_entries
  $max_tcp_clients                 = $::pdns::recursor::max_tcp_clients
  $max_tcp_per_client              = $::pdns::recursor::max_tcp_per_client
  $minimum_ttl_override            = $::pdns::recursor::minimum_ttl_override
  $network_timeout                 = $::pdns::recursor::network_timeout
  $no_shuffle                      = $::pdns::recursor::no_shuffle
  $packetcache_servfail_ttl        = $::pdns::recursor::packetcache_servfail_ttl
  $packetcache_ttl                 = $::pdns::recursor::packetcache_ttl
  $pdns_distributes_queries        = $::pdns::recursor::pdns_distributes_queries
  $processes                       = $::pdns::recursor::processes
  $query_local_address             = $::pdns::recursor::query_local_address
  $query_local_address6            = $::pdns::recursor::query_local_address6
  $quiet                           = $::pdns::recursor::quiet
  $remotes_ringbuffer_entries      = $::pdns::recursor::remotes_ringbuffer_entries
  $security_poll_suffix            = $::pdns::recursor::security_poll_suffix
  $serve_rfc1918                   = $::pdns::recursor::serve_rfc1918
  $server_down_max_fails           = $::pdns::recursor::server_down_max_fails
  $server_down_throttle_time       = $::pdns::recursor::server_down_throttle_time
  $server_id                       = $::pdns::recursor::server_id
  $single_socket                   = $::pdns::recursor::single_socket
  $soa_minimum_ttl                 = $::pdns::recursor::soa_minimum_ttl
  $soa_serial_offset               = $::pdns::recursor::soa_serial_offset
  $socket_dir                      = $::pdns::recursor::socket_dir
  $socket_group                    = $::pdns::recursor::socket_group
  $socket_mode                     = $::pdns::recursor::socket_mode
  $socket_owner                    = $::pdns::recursor::socket_owner
  $spoof_nearmiss_max              = $::pdns::recursor::spoof_nearmiss_max
  $stack_size                      = $::pdns::recursor::stack_size
  $threads                         = $::pdns::recursor::threads
  $trace                           = $::pdns::recursor::trace
  $udp_truncation_threshold        = $::pdns::recursor::udp_truncation_threshold
  $version_string                  = $::pdns::recursor::version_string

  case $package_ensure {
    true:     {
      $file_ensure     = 'present'
    }
    false:    {
      $file_ensure     = 'absent'
    }
    'absent': {
      $file_ensure     = 'absent'
    }
    'purged': {
      $file_ensure     = 'absent'
    }
    default:  {
      $file_ensure     = 'present'
    }
  }

  file { "${pdns::recursor::config_path}/recursor.conf":
    ensure  => $file_ensure,
    mode    => '0644',
    content => template('pdns/recursor/recursor.conf.erb'),
    #require => Package[$::pdns::recursor::package_name],
    #notify  => Class['pdns::recursor::service'],
  }
}
