# == Class pdns::nameserver::params
#
# This class is meant to be called from pdns::nameserver
# It sets variables according to platform
#
# === Parameters
#
# [package_ensure]
#
#
# [service_ensure]
#
#
# [backend]
#
#
# [backend_host]
#
#
# [backend_user]
#
#
# [backend_dbname]
#
#
# [backend_password]
#
#
# [backend_dbpath]
#
#
# [setgid]
#   If set, change group id to this gid for more security
#
# [setuid]
#   If set, change user id to this uid for more security
#
# [add_superfluous_nsec3_for_old_bind]
#   Add superfluous NSEC3 record to positive wildcard response
#
# [allow_axfr_ips]
#   Allow zonetransfers only to these subnets
#
# [allow_recursion]
#   List of subnets that are allowed to recurse
#
# [any_to_tcp]
#   Answer ANY queries with tc=1, shunting to TCP
#
# [cache_ttl]
#   Seconds to store packets in the PacketCache
#
# [chroot]
#   If set, chroot to this directory for more security
#
# [config_dir]
#   Location of configuration directory (pdns.conf)
#
# [config_name]
#   Name of this virtual configuration - will rename the binary image
#
# [control_console]
#   Debugging switch - don't use
#
# [daemon]
#   Operate as a daemon
#
# [default_ksk_algorithms]
#   Default KSK algorithms
#
# [default_ksk_size]
#   Default KSK size (0 means default)
#
# [default_soa_mail]
#   Mail address to insert in the SOA record if none set in the backend
#
# [default_soa_name]
#   Name to insert in the SOA record if none set in the backend
#
# [default_ttl]
#   Seconds a result is valid if not set otherwise
#
# [default_zsk_algorithms]
#   Default ZSK algorithms
#
# [default_zsk_size]
#   Default KSK size (0 means default)
#
# [direct_dnskey]
#   Fetch DNSKEY RRs from backend during DNSKEY synthesis
#
# [disable_axfr]
#   Disable zonetransfers but do allow TCP queries
#
# [disable_tcp]
#   Do not listen to TCP queries
#
# [distributor_threads]
#   Default number of Distributor (backend) threads to start
#
# [do_ipv6_additional_processing]
#   Do AAAA additional processing
#
# [edns_subnet_option_number]
#   EDNS option number to use
#
# [edns_subnet_processing]
#   If we should act on EDNS Subnet options
#
# [entropy_source]
#   If set, read entropy from this file
#
# [experimental_json_interface]
#   If the webserver should serve JSON data
#
# [experimental_logfile]
#   Filename of the log file for JSON parser
#
# [fancy_records]
#   Process URL and MBOXFW records
#
# [guardian]
#   Run within a guardian process
#
# [include_dir]
#   Include *.conf files from this directory
#
# [load_modules]
#   Load this module - supply absolute or relative path
#
# [local_address]
#   Local IP addresses to which we bind
#
# [local_ipv6]
#   Local IP address to which we bind
#
# [local_port]
#   The port on which we listen
#
# [log_dns_details]
#   If PDNS should log DNS non-erroneous details
#
# [log_dns_queries]
#   If PDNS should log all incoming DNS queries
#
# [log_failed_updates]
#   If PDNS should log failed update requests
#
# [logging_facility]
#   Log under a specific facility
#
# [log_level]
#   Amount of logging. Higher is more. Do not set below 3
#
# [lua_prequery_script]
#   Lua script with prequery handler
#
# [master]
#   Act as a master
#
# [max_cache_entries]
#   Maximum number of cache entries
#
# [max_ent_entries]
#   Maximum number of empty non-terminals in a zone
#
# [max_queue_length]
#   Maximum queuelength before considering 
#
# [max_tcp_connections]
#   Maximum number of TCP connections
#
# [module_dir]
#   Default directory for modules
#
# [negquery_cache_ttl]
#   Seconds to store negative query results in the QueryCache
#
# [no_shuffle]
#   Set this to prevent random shuffling of answers - for regression testing
#
# [out_of_zone_additional_processing]
#   Do out of zone additional processing
#
# [overload_queue_length]
#   Maximum queuelength moving to packetcache only
#
# [pipebackend_abi_version]
#   Version of the pipe backend ABI
#
# [prevent_self_notification]
#   Don't send notifications to what we think is ourself
#
# [query_cache_ttl]
#   Seconds to store query results in the QueryCache
#
# [query_local_address]
#   Source IP address for sending queries
#
# [query_local_address6]
#   Source IPv6 address for sending queries
#
# [query_logging]
#   Hint backends that queries should be logged
#
# [queue_limit]
#   Maximum number of milliseconds to queue a query
#
# [receiver_threads]
#   Default number of receiver threads to start
#
# [recursive_cache_ttl]
#   Seconds to store packets for recursive queries in the PacketCache
#
# [recursor]
#   If recursion is desired, IP address of a recursing nameserver
#
# [retrieval_threads]
#   Number of AXFR-retrieval threads for slave operation
#
# [send_root_referral]
#   Send out old-fashioned root-referral instead of ServFail in case of no authority
#
# [server_id]
#   Returned when queried for 'server.id' TXT or NSID, defaults to hostname
#
# [signing_threads]
#   Default number of signer threads to start
#
# [slave]
#   Act as a slave
#
# [slave_cycle_interval]
#   Reschedule failed SOA serial checks once every .. seconds
#
# [slave_renotify]
#   If we should send out notifications for slaved updates
#
# [smtpredirector]
#   Our smtpredir MX host
#
# [soa_expire_default]
#   Default SOA expire
#
# [soa_minimum_ttl]
#   Default SOA minimum ttl
#
# [soa_refresh_default]
#   Default SOA refresh
#
# [soa_retry_default]
#   Default SOA retry
#
# [soa_serial_offset]
#   Make sure that no SOA serial is less than this number
#
# [socket_dir]
#   Where the controlsocket will live
#
# [tcp_control_address]
#   If set, PowerDNS can be controlled over TCP on this address
#
# [tcp_control_port]
#   If set, PowerDNS can be controlled over TCP on this address
#
# [tcp_control_range]
#   If set, remote control of PowerDNS is possible over these networks only
#
# [tcp_control_secret]
#   If set, PowerDNS can be controlled over TCP after passing this secret
#
# [traceback_handler]
#   Enable the traceback handler (Linux only)
#
# [trusted_notification_proxy]
#   IP address of incoming notification proxy
#
# [urlredirector]
#   Where we send hosts to that need to be url redirected
#
# [version_string]
#   PowerDNS version in packets - full, anonymous, powerdns or custom
#
# [webserver]
#   Start a webserver for monitoring
#
# [webserver_address]
#   IP Address of webserver to listen on
#
# [webserver_password]
#   Password required for accessing the webserver
#
# [webserver_port]
#   Port of webserver to listen on
#
# [webserver_print_arguments]
#   If the webserver should print arguments
#
# [wildcard_url]
#   Process URL and MBOXFW records
#

class pdns::nameserver::params {
  
  case $::osfamily {
    'Debian': {
      $package_name = 'pdns_server'
      $service_name = 'pdns'
      $config_path = '/etc/powerdns'
    }
    'RedHat', 'Amazon': {
      $package_name = 'pdns'
      $service_name = 'pdns'
      $config_path = '/etc/pdns'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }

  $package_ensure                     = 'present'    # Example: present
  $service_ensure                     = 'running'    # Example: running
  $backend                            = 'sqlite'  # Example: mysql
  $backend_host                       = 'localhost'  # Example: localhost
  $backend_user                       = 'pdns'  # Example: pdns
  $backend_dbname                     = 'pdns'  # Example: pdns
  $backend_password                   = undef  # Example: 
  $backend_dbpath                     = '/var/pdns/powerdns.sqlite'  # Example: /var/pdns/powerdns.sqlite
  $setgid                             = 'pdns'    # Example: pdns 
  $setuid                             = 'pdns'    # Example: pdns
  $add_superfluous_nsec3_for_old_bind = undef    # Example: yes
  $allow_axfr_ips                     = undef    # Example: 0.0.0.0/0,::/0
  $allow_recursion                    = undef    # Example: 0.0.0.0/0
  $any_to_tcp                         = undef    # Example: no
  $cache_ttl                          = undef    # Example: 20
  $chroot                             = undef    # Example: 
  $config_dir                         = undef    # Example: /usr/local/etc
  $config_name                        = undef    # Example: 
  $control_console                    = undef    # Example: no
  $daemon                             = 'yes'    # Example: no
  $default_ksk_algorithms             = undef    # Example: rsasha256
  $default_ksk_size                   = undef    # Example: 
  $default_soa_mail                   = undef    # Example: 
  $default_soa_name                   = undef    # Example: a.misconfigured.powerdns.server
  $default_ttl                        = undef    # Example: 3600
  $default_zsk_algorithms             = undef    # Example: rsasha256
  $default_zsk_size                   = undef    # Example: 0 
  $direct_dnskey                      = undef    # Example: no
  $disable_axfr                       = undef    # Example: no
  $disable_tcp                        = undef    # Example: no
  $distributor_threads                = undef    # Example: 3
  $do_ipv6_additional_processing      = undef    # Example: yes
  $edns_subnet_option_number          = undef    # Example: 20730
  $edns_subnet_processing             = undef    # Example: no
  $entropy_source                     = undef    # Example: /dev/urandom
  $experimental_json_interface        = undef    # Example: no
  $experimental_logfile               = undef    # Example: /var/log/pdns.log
  $fancy_records                      = undef    # Example: no
  $guardian                           = 'yes'    # Example: no
  $include_dir                        = undef    # Example: 
  $load_modules                       = undef    # Example: 
  $local_address                      = "${::ipaddress}"    # Example: 0.0.0.0
  $local_ipv6                         = undef    # Example: 
  $local_port                         = 53       # Example: 53
  $log_dns_details                    = undef    # Example: 
  $log_dns_queries                    = undef    # Example: no
  $log_failed_updates                 = undef    # Example: 
  $logging_facility                   = undef    # Example: 
  $log_level                           = undef    # Example: 4
  $lua_prequery_script                = undef    # Example: 
  $master                             = undef    # Example: no
  $max_cache_entries                  = undef    # Example: 1000000
  $max_ent_entries                    = undef    # Example: 100000
  $max_queue_length                   = undef    # Example: 5000
  $max_tcp_connections                = undef    # Example: 10
  $module_dir                         = undef    # Example: /usr/local/lib
  $negquery_cache_ttl                 = undef    # Example: 60
  $no_shuffle                         = undef    # Example: off
  $out_of_zone_additional_processing  = undef    # Example: yes
  $overload_queue_length              = undef    # Example: 0
  $pipebackend_abi_version            = undef    # Example: 1
  $prevent_self_notification          = undef    # Example: yes
  $query_cache_ttl                    = undef    # Example: 20
  $query_local_address                = undef    # Example: 0.0.0.0
  $query_local_address6               = undef    # Example: ::
  $query_logging                      = undef    # Example: no
  $queue_limit                        = undef    # Example: 1500
  $receiver_threads                   = undef    # Example: 1
  $recursive_cache_ttl                = undef    # Example: 10
  $recursor                           = undef    # Example: no
  $retrieval_threads                  = undef    # Example: 2
  $send_root_referral                 = undef    # Example: no
  $server_id                          = undef    # Example: 
  $signing_threads                    = undef    # Example: 3
  $slave                              = undef    # Example: no
  $slave_cycle_interval               = undef    # Example: 60
  $slave_renotify                     = undef    # Example: no
  $smtpredirector                     = undef    # Example: a.misconfigured.powerdns.smtp.server
  $soa_expire_default                 = undef    # Example: 604800
  $soa_minimum_ttl                    = undef    # Example: 3600
  $soa_refresh_default                = undef    # Example: 10800
  $soa_retry_default                  = undef    # Example: 3600
  $soa_serial_offset                  = undef    # Example: 0
  $socket_dir                         = undef    # Example: /var/run
  $tcp_control_address                = undef    # Example: 
  $tcp_control_port                   = undef    # Example: 53000
  $tcp_control_range                  = undef    # Example: 127.0.0.0/8, 10.0.0.0/8, 192.168.0.0/16, 172.16.0.0/12, ::1/128, fe80::/10
  $tcp_control_secret                 = undef    # Example: 
  $traceback_handler                  = undef    # Example: yes
  $trusted_notification_proxy         = undef    # Example: 
  $urlredirector                      = undef    # Example: 127.0.0.1
  $version_string                     = 'anonymous'    # Example: full
  $webserver                          = undef    # Example: no
  $webserver_address                  = undef    # Example: 127.0.0.1
  $webserver_password                 = undef    # Example: 
  $webserver_port                     = undef    # Example: 8081
  $webserver_print_arguments          = undef    # Example: no
  $wildcard_url                       = undef    # Example: no
}
