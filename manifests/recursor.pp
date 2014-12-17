# == Class: pdns::recursor
#
# === Parameters
#
# See pdns::recursor::params for details.
#
class pdns::recursor (
  $package_ensure                  = $::pdns::recursor::params::package_ensure,
  $service_ensure                  = $::pdns::recursor::params::service_ensure,
  $setgid                          = $::pdns::recursor::params::setgid,
  $setuid                          = $::pdns::recursor::params::setuid,
  $allow_from                      = $::pdns::recursor::params::allow_from,
  $allow_from_file                 = $::pdns::recursor::params::allow_from_file,
  $any_to_tcp                      = $::pdns::recursor::params::any_to_tcp,
  $auth_zones                      = $::pdns::recursor::params::auth_zones,
  $carbon_interval                 = $::pdns::recursor::params::carbon_interval,
  $carbon_ourname                  = $::pdns::recursor::params::carbon_ourname,
  $carbon_server                   = $::pdns::recursor::params::carbon_server,
  $chroot                          = $::pdns::recursor::params::chroot,
  $client_tcp_timeout              = $::pdns::recursor::params::client_tcp_timeout,
  $config_dir                      = $::pdns::recursor::params::config_dir,
  $config_name                     = $::pdns::recursor::params::config_name,
  $daemon                          = $::pdns::recursor::params::daemon,
  $delegation_only                 = $::pdns::recursor::params::delegation_only,
  $disable_edns                    = $::pdns::recursor::params::disable_edns,
  $disable_packetcache             = $::pdns::recursor::params::disable_packetcache,
  $dont_query                      = $::pdns::recursor::params::dont_query,
  $entropy_source                  = $::pdns::recursor::params::entropy_source,
  $etc_hosts_file                  = $::pdns::recursor::params::etc_hosts_file,
  $experimental_api_config_dir     = $::pdns::recursor::params::experimental_api_config_dir,
  $experimental_api_key            = $::pdns::recursor::params::experimental_api_key,
  $experimental_api_readonly       = $::pdns::recursor::params::experimental_api_readonly,
  $experimental_logfile            = $::pdns::recursor::params::experimental_logfile,
  $experimental_webserver          = $::pdns::recursor::params::experimental_webserver,
  $experimental_webserver_address  = $::pdns::recursor::params::experimental_webserver_address,
  $experimental_webserver_password = $::pdns::recursor::params::experimental_webserver_password,
  $experimental_webserver_port     = $::pdns::recursor::params::experimental_webserver_port,
  $export_etc_hosts                = $::pdns::recursor::params::export_etc_hosts,
  $export_etc_hosts_search_suffix  = $::pdns::recursor::params::export_etc_hosts_search_suffix,
  $forward_zones                   = $::pdns::recursor::params::forward_zones,
  $forward_zones_file              = $::pdns::recursor::params::forward_zones_file,
  $forward_zones_recurse           = $::pdns::recursor::params::forward_zones_recurse,
  $hint_file                       = $::pdns::recursor::params::hint_file,
  $include_dir                     = $::pdns::recursor::params::include_dir,
  $latency_statistic_size          = $::pdns::recursor::params::latency_statistic_size,
  $local_address                   = $::pdns::recursor::params::local_address,
  $local_port                      = $::pdns::recursor::params::local_port,
  $log_common_errors               = $::pdns::recursor::params::log_common_errors,
  $logging_facility                = $::pdns::recursor::params::logging_facility,
  $log_level                       = $::pdns::recursor::params::log_level,
  $lua_dns_script                  = $::pdns::recursor::params::lua_dns_script,
  $max_cache_entries               = $::pdns::recursor::params::max_cache_entries,
  $max_cache_ttl                   = $::pdns::recursor::params::max_cache_ttl,
  $max_mthreads                    = $::pdns::recursor::params::max_mthreads,
  $max_negative_ttl                = $::pdns::recursor::params::max_negative_ttl,
  $max_packetcache_entries         = $::pdns::recursor::params::max_packetcache_entries,
  $max_tcp_clients                 = $::pdns::recursor::params::max_tcp_clients,
  $max_tcp_per_client              = $::pdns::recursor::params::max_tcp_per_client,
  $minimum_ttl_override            = $::pdns::recursor::params::minimum_ttl_override,
  $network_timeout                 = $::pdns::recursor::params::network_timeout,
  $no_shuffle                      = $::pdns::recursor::params::no_shuffle,
  $packetcache_servfail_ttl        = $::pdns::recursor::params::packetcache_servfail_ttl,
  $packetcache_ttl                 = $::pdns::recursor::params::packetcache_ttl,
  $pdns_distributes_queries        = $::pdns::recursor::params::pdns_distributes_queries,
  $processes                       = $::pdns::recursor::params::processes,
  $query_local_address             = $::pdns::recursor::params::query_local_address,
  $query_local_address6            = $::pdns::recursor::params::query_local_address6,
  $quiet                           = $::pdns::recursor::params::quiet,
  $remotes_ringbuffer_entries      = $::pdns::recursor::params::remotes_ringbuffer_entries,
  $security_poll_suffix            = $::pdns::recursor::params::security_poll_suffix,
  $serve_rfc1918                   = $::pdns::recursor::params::serve_rfc1918,
  $server_down_max_fails           = $::pdns::recursor::params::server_down_max_fails,
  $server_down_throttle_time       = $::pdns::recursor::params::server_down_throttle_time,
  $server_id                       = $::pdns::recursor::params::server_id,
  $single_socket                   = $::pdns::recursor::params::single_socket,
  $soa_minimum_ttl                 = $::pdns::recursor::params::soa_minimum_ttl,
  $soa_serial_offset               = $::pdns::recursor::params::soa_serial_offset,
  $socket_dir                      = $::pdns::recursor::params::socket_dir,
  $socket_group                    = $::pdns::recursor::params::socket_group,
  $socket_mode                     = $::pdns::recursor::params::socket_mode,
  $socket_owner                    = $::pdns::recursor::params::socket_owner,
  $spoof_nearmiss_max              = $::pdns::recursor::params::spoof_nearmiss_max,
  $stack_size                      = $::pdns::recursor::params::stack_size,
  $threads                         = $::pdns::recursor::params::threads,
  $trace                           = $::pdns::recursor::params::trace,
  $udp_truncation_threshold        = $::pdns::recursor::params::udp_truncation_threshold,
  $version_string                  = $::pdns::recursor::params::version_string
) inherits ::pdns::recursor::params {

  if ($package_ensure == 'present' or $package_ensure == true) {
    anchor { 'pdns::recursor::start': }->
    class { '::pdns::recursor::install': }->
    class { '::pdns::recursor::config': }~>
    class { '::pdns::recursor::service': }->
    anchor { 'pdns::recursor::end': }
  } else {
    anchor { 'pdns::recursor::start': }->
    class { '::pdns::recursor::service': }->
    class { '::pdns::recursor::config': }->
    class { '::pdns::recursor::install': }->
    anchor { 'pdns::recursor::end': }
  }
}