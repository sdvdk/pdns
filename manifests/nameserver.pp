# == Class: pdns::nameserver
#
# === Parameters
#
# See pdns::nameserver::params for details.
#
class pdns::nameserver (
  $package_ensure                     = $::pdns::nameserver::params::package_ensure,
  $service_ensure                     = $::pdns::nameserver::params::service_ensure,
  $backend                            = $::pdns::nameserver::params::backend,
  $backend_host                       = $::pdns::nameserver::params::backend_host,
  $backend_user                       = $::pdns::nameserver::params::backend_user,
  $backend_dbname                     = $::pdns::nameserver::params::backend_dbname,
  $backend_password                   = $::pdns::nameserver::params::backend_password,
  $backend_dbpath                     = $::pdns::nameserver::params::backend_dbpath,
  $setgid                             = $::pdns::nameserver::params::setgid,
  $setuid                             = $::pdns::nameserver::params::setuid,
  $add_superfluous_nsec3_for_old_bind = $::pdns::nameserver::params::add_superfluous_nsec3_for_old_bind,
  $allow_axfr_ips                     = $::pdns::nameserver::params::allow_axfr_ips,
  $allow_recursion                    = $::pdns::nameserver::params::allow_recursion,
  $any_to_tcp                         = $::pdns::nameserver::params::any_to_tcp,
  $cache_ttl                          = $::pdns::nameserver::params::cache_ttl,
  $chroot                             = $::pdns::nameserver::params::chroot,
  $config_dir                         = $::pdns::nameserver::params::config_dir,
  $config_name                        = $::pdns::nameserver::params::config_name,
  $control_console                    = $::pdns::nameserver::params::control_console,
  $daemon                             = $::pdns::nameserver::params::daemon,
  $default_ksk_algorithms             = $::pdns::nameserver::params::default_ksk_algorithms,
  $default_ksk_size                   = $::pdns::nameserver::params::default_ksk_size,
  $default_soa_mail                   = $::pdns::nameserver::params::default_soa_mail,
  $default_soa_name                   = $::pdns::nameserver::params::default_soa_name,
  $default_ttl                        = $::pdns::nameserver::params::default_ttl,
  $default_zsk_algorithms             = $::pdns::nameserver::params::default_zsk_algorithms,
  $default_zsk_size                   = $::pdns::nameserver::params::default_zsk_size,
  $direct_dnskey                      = $::pdns::nameserver::params::direct_dnskey,
  $disable_axfr                       = $::pdns::nameserver::params::disable_axfr,
  $disable_tcp                        = $::pdns::nameserver::params::disable_tcp,
  $distributor_threads                = $::pdns::nameserver::params::distributor_threads,
  $do_ipv6_additional_processing      = $::pdns::nameserver::params::do_ipv6_additional_processing,
  $edns_subnet_option_number          = $::pdns::nameserver::params::edns_subnet_option_number,
  $edns_subnet_processing             = $::pdns::nameserver::params::edns_subnet_processing,
  $entropy_source                     = $::pdns::nameserver::params::entropy_source,
  $experimental_json_interface        = $::pdns::nameserver::params::experimental_json_interface,
  $experimental_logfile               = $::pdns::nameserver::params::experimental_logfile,
  $fancy_records                      = $::pdns::nameserver::params::fancy_records,
  $guardian                           = $::pdns::nameserver::params::guardian,
  $include_dir                        = $::pdns::nameserver::params::include_dir,
  $load_modules                       = $::pdns::nameserver::params::load_modules,
  $local_address                      = $::pdns::nameserver::params::local_address,
  $local_ipv6                         = $::pdns::nameserver::params::local_ipv6,
  $local_port                         = $::pdns::nameserver::params::local_port,
  $log_dns_details                    = $::pdns::nameserver::params::log_dns_details,
  $log_dns_queries                    = $::pdns::nameserver::params::log_dns_queries,
  $log_failed_updates                 = $::pdns::nameserver::params::log_failed_updates,
  $logging_facility                   = $::pdns::nameserver::params::logging_facility,
  $log_level                          = $::pdns::nameserver::params::log_level,
  $lua_prequery_script                = $::pdns::nameserver::params::lua_prequery_script,
  $master                             = $::pdns::nameserver::params::master,
  $max_cache_entries                  = $::pdns::nameserver::params::max_cache_entries,
  $max_ent_entries                    = $::pdns::nameserver::params::max_ent_entries,
  $max_queue_length                   = $::pdns::nameserver::params::max_queue_length,
  $max_tcp_connections                = $::pdns::nameserver::params::max_tcp_connections,
  $module_dir                         = $::pdns::nameserver::params::module_dir,
  $negquery_cache_ttl                 = $::pdns::nameserver::params::negquery_cache_ttl,
  $no_shuffle                         = $::pdns::nameserver::params::no_shuffle,
  $out_of_zone_additional_processing  = $::pdns::nameserver::params::out_of_zone_additional_processing,
  $overload_queue_length              = $::pdns::nameserver::params::overload_queue_length,
  $pipebackend_abi_version            = $::pdns::nameserver::params::pipebackend_abi_version,
  $prevent_self_notification          = $::pdns::nameserver::params::prevent_self_notification,
  $query_cache_ttl                    = $::pdns::nameserver::params::query_cache_ttl,
  $query_local_address                = $::pdns::nameserver::params::query_local_address,
  $query_local_address6               = $::pdns::nameserver::params::query_local_address6,
  $query_logging                      = $::pdns::nameserver::params::query_logging,
  $queue_limit                        = $::pdns::nameserver::params::queue_limit,
  $receiver_threads                   = $::pdns::nameserver::params::receiver_threads,
  $recursive_cache_ttl                = $::pdns::nameserver::params::recursive_cache_ttl,
  $recursor                           = $::pdns::nameserver::params::recursor,
  $retrieval_threads                  = $::pdns::nameserver::params::retrieval_threads,
  $send_root_referral                 = $::pdns::nameserver::params::send_root_referral,
  $server_id                          = $::pdns::nameserver::params::server_id,
  $signing_threads                    = $::pdns::nameserver::params::signing_threads,
  $slave                              = $::pdns::nameserver::params::slave,
  $slave_cycle_interval               = $::pdns::nameserver::params::slave_cycle_interval,
  $slave_renotify                     = $::pdns::nameserver::params::slave_renotify,
  $smtpredirector                     = $::pdns::nameserver::params::smtpredirector,
  $soa_expire_default                 = $::pdns::nameserver::params::soa_expire_default,
  $soa_minimum_ttl                    = $::pdns::nameserver::params::soa_minimum_ttl,
  $soa_refresh_default                = $::pdns::nameserver::params::soa_refresh_default,
  $soa_retry_default                  = $::pdns::nameserver::params::soa_retry_default,
  $soa_serial_offset                  = $::pdns::nameserver::params::soa_serial_offset,
  $socket_dir                         = $::pdns::nameserver::params::socket_dir,
  $tcp_control_address                = $::pdns::nameserver::params::tcp_control_address,
  $tcp_control_port                   = $::pdns::nameserver::params::tcp_control_port,
  $tcp_control_range                  = $::pdns::nameserver::params::tcp_control_range,
  $tcp_control_secret                 = $::pdns::nameserver::params::tcp_control_secret,
  $traceback_handler                  = $::pdns::nameserver::params::traceback_handler,
  $trusted_notification_proxy         = $::pdns::nameserver::params::trusted_notification_proxy,
  $urlredirector                      = $::pdns::nameserver::params::urlredirector,
  $version_string                     = $::pdns::nameserver::params::version_string,
  $webserver                          = $::pdns::nameserver::params::webserver,
  $webserver_address                  = $::pdns::nameserver::params::webserver_address,
  $webserver_password                 = $::pdns::nameserver::params::webserver_password,
  $webserver_port                     = $::pdns::nameserver::params::webserver_port,
  $webserver_print_arguments          = $::pdns::nameserver::params::webserver_print_arguments,
  $wildcard_url                       = $::pdns::nameserver::params::wildcard_url
) inherits ::pdns::nameserver::params {

  if ($package_ensure == 'present' or $package_ensure == true) {
    anchor { 'pdns::nameserver::start': }->
    class { '::pdns::nameserver::install': }->
    class { '::pdns::nameserver::config': }->
    class { '::pdns::nameserver::service': }->
    anchor { 'pdns::nameserver::end': }
  } else {
    anchor { 'pdns::nameserver::start': }->
    class { '::pdns::nameserver::service': }->
    class { '::pdns::nameserver::config': }->
    class { '::pdns::nameserver::install': }->
    anchor { 'pdns::nameserver::end': }
  }
}