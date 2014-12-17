# == Class pdns::recursor::params
#
# This class is meant to be called from pdns::recursor
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
# [setgid]    
#   If set, change group id to this gid for more security
#
# [setuid]    
#   If set, change user id to this uid for more security
#
# [allow_from]    
#   If set, only allow these comma separated netmasks to recurse
#
# [allow_from_file]   
#   If set, load allowed netmasks from this file
#
# [any_to_tcp]    
#   Answer ANY queries with tc=1, shunting to TCP
#
# [auth_zones]    
#   Zones for which we have authoritative data, comma separated domain=file pairs
#
# [carbon_interval]   
#   Number of seconds between carbon (graphite) updates
#
# [carbon_ourname]
#   If set, overrides our reported hostname for carbon stats
#
# [carbon_server]
#   If set, send metrics in carbon (graphite) format to this server
#
# [chroot]    
#   switch to chroot jail
#
# [client_tcp_timeout]    
#   Timeout in seconds when talking to TCP clients
#
# [config_dir]     
#   Location of configuration directory (recursor.conf)
#
# [config_name]   
#   Name of this virtual configuration - will rename the binary image
#
# [daemon]    
#   Operate as a daemon
#
# [delegation_only]   
#   Which domains we only accept delegations from
#
# [disable_edns]  
#   Disable EDNS - EXPERIMENTAL, LEAVE DISABLED
#
# [disable_packetcache]   
#   Disable packetcache
#
# [dont_query]    
#   If set, do not query these netmasks for DNS data
#
# [entropy_source]   
#   If set, read entropy from this file
#
# [etc_hosts_file]    
#   Path to 'hosts' file
#
# [experimental_api_config_dir]   
#   Directory where REST API stores config and zones
#
# [experimental_api_key]  
#   REST API Static authentication key (required for API use)
#
# [experimental_api_readonly] 
#   If the JSON API should disallow data modification
#
# [experimental_logfile]  
#   Filename of the log file for JSON parser
#
# [experimental_webserver]    
#   Start a webserver for monitoring
#
# [experimental_webserver_address]    
#   IP Address of webserver to listen on
#
# [experimental_webserver_password]   
#   Password required for accessing the webserver
#
# [experimental_webserver_port]   
#   Port of webserver to listen on
#
# [export_etc_hosts]  
#   If we should serve up contents from /etc/hosts
#
# [export_etc_hosts_search_suffix]    
#   Also serve up the contents of /etc/hosts with this suffix
#
# [forward_zones] 
#   Zones for which we forward queries, comma separated domain=ip pairs
#
# [forward_zones_file]    
#   File with (+)domain=ip pairs for forwarding
#
# [forward_zones_recurse] 
#   Zones for which we forward queries with recursion bit, comma separated domain=ip pairs
#
# [hint_file] 
#   If set, load root hints from this file
#
# [include_dir]   
#   Include *.conf files from this directory
#
# [latency_statistic_size]    
#   Number of latency values to calculate the qa-latency average
#
# [local_address] 
#   IP addresses to listen on, separated by spaces or commas. Also accepts ports.
#
# [local_port]    
#   port to listen on
#
# [log_common_errors] 
#   If we should log rather common errors
#
# [logging_facility]  
#   Facility to log messages as. 0 corresponds to local0
#
# [loglevel]  
#   Amount of logging. Higher is more. Do not set below 3
#
# [lua_dns_script]    
#   Filename containing an optional 'lua' script that will be used to modify dns answers
#
# [max_cache_entries] 
#   If set, maximum number of entries in the main cache
#
# [max_cache_ttl] 
#   maximum number of seconds to keep a cached entry in memory
#
# [max_mthreads]  
#   Maximum number of simultaneous Mtasker threads
#
# [max_negative_ttl]  
#   maximum number of seconds to keep a negative cached entry in memory
#
# [max_packetcache_entries]   
#   maximum number of entries to keep in the packetcache
#
# [max_tcp_clients]   
#   Maximum number of simultaneous TCP clients
#
# [max_tcp_per_client]    
#   If set, maximum number of TCP sessions per client (IP address)
#
# [minimum_ttl_override]  
#   Set under adverse conditions, a minimum TTL
#
# [network_timeout]   
#   Wait this nummer of milliseconds for network i/o
#
# [no_shuffle]    
#   Don't change
#
# [packetcache_servfail_ttl]  
#   maximum number of seconds to keep a cached servfail entry in packetcache
#
# [packetcache_ttl]   
#   maximum number of seconds to keep a cached entry in packetcache
#
# [pdns_distributes_queries]  
#   If PowerDNS itself should distribute queries over threads (EXPERIMENTAL)
#
# [processes] 
#   Launch this number of processes (EXPERIMENTAL, DO NOT CHANGE)
#
# [query_local_address]   
#   Source IP address for sending queries
#
# [query_local_address6]  
#   Source IPv6 address for sending queries. IF UNSET, IPv6 WILL NOT BE USED FOR OUTGOING QUERIES
#
# [quiet] 
#   Suppress logging of questions and answers
#
# [remotes_ringbuffer_entries]    
#   maximum number of packets to store statistics for
#
# [security_poll_suffix] 
#   Domain name from which to query security update notifications
#
# [serve_rfc1918]
#   If we should be authoritative for RFC 1918 private IP space
#
# [server_down_max_fails] 
#   Maximum number of consecutive timeouts (and unreachables) to mark a server as down ( 0 => disabled )
#
# [server_down_throttle_time] 
#   Number of seconds to throttle all queries to a server after being marked as down
#
# [server_id] 
#   Returned when queried for 'server.id' TXT or NSID, defaults to hostname
#
# [single_socket] 
#   If set, only use a single socket for outgoing queries
#
# [soa_minimum_ttl]   
#   Don't change
#
# [soa_serial_offset] 
#   Don't change
#
# [socket_dir]    
#   Where the controlsocket will live
#
# [socket_group]  
#   Group of socket
#
# [socket_mode]   
#   Permissions for socket
#
# [socket_owner]  
#   Owner of socket
#
# [spoof_nearmiss_max]    
#   If non-zero, assume spoofing after this many near misses
#
# [stack_size]    
#   stack size per mthread
#
# [threads]  
#   Launch this number of threads
#
# [trace]
#   if we should output heaps of logging. set to 'fail' to only log failing domains
#
# [udp_truncation_threshold]  
#   Maximum UDP response size before we truncate
#
# [version_string]  
#   string reported on version.pdns or version.bind
#
class pdns::recursor::params {

  case $::osfamily {
    'Debian': {
      $package_name = 'pdns-recursor'
      $service_name = 'pdns-recursor'
      $config_path = '/etc/powerdns'
    }
    'RedHat', 'Amazon': {
      $package_name = 'pdns-recursor'
      $service_name = 'pdns-recursor'
      $config_path = '/etc/pdns-recursor'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }

  $package_ensure                  = 'present'    # Example: present
  $service_ensure                  = 'running'    # Example: running
  $setgid                          = 'pdns-recursor'    # Example: pdns-recursor
  $setuid                          = 'pdns-recursor'    # Example: pdns-recursor
  $allow_from                      = undef    # Example: 127.0.0.1
  $allow_from_file                 = undef    # Example: 
  $any_to_tcp                      = undef    # Example: no
  $auth_zones                      = undef    # Example: 
  $carbon_interval                 = undef    # Example: 30
  $carbon_ourname                  = undef    # Example: 
  $carbon_server                   = undef    # Example: 
  $chroot                          = undef    # Example: 
  $client_tcp_timeout              = undef    # Example: 2
  $config_dir                      = undef    # Example: /etc/pdns-recursor
  $config_name                     = undef    # Example: 
  $daemon                          = 'yes'    # Example:
  $delegation_only                 = undef    # Example: 
  $disable_edns                    = undef    # Example: 
  $disable_packetcache             = undef    # Example: no
  $dont_query                      = undef    # Example: 127.0.0.0/8, 10.0.0.0/8, 100.64.0.0/10, 169.254.0.0/16, 192.168.0.0/16, 172.16.0.0/12, ::1/128, fe80::/10
  $entropy_source                  = undef    # Example: /dev/urandom
  $etc_hosts_file                  = undef    # Example: /etc/hosts
  $experimental_api_config_dir     = undef    # Example: 
  $experimental_api_key            = undef    # Example: 
  $experimental_api_readonly       = undef    # Example: no
  $experimental_logfile            = undef    # Example: /var/log/pdns.log
  $experimental_webserver          = undef    # Example: no
  $experimental_webserver_address  = undef    # Example: 127.0.0.1
  $experimental_webserver_password = undef    # Example: 
  $experimental_webserver_port     = undef    # Example: 8082
  $export_etc_hosts                = undef    # Example: off
  $export_etc_hosts_search_suffix  = undef    # Example: 
  $forward_zones                   = undef    # Example: 
  $forward_zones_file              = undef    # Example: 
  $forward_zones_recurse           = undef    # Example: 
  $hint_file                       = undef    # Example: 
  $include_dir                     = undef    # Example: 
  $latency_statistic_size          = undef    # Example: 10000
  $local_address                   = $::ipaddress_lo    # Example: 
  $local_port                      = 53       # Example: 53
  $log_common_errors               = undef    # Example: yes
  $logging_facility                = undef    # Example: 
  $log_level                       = undef    # Example: 4
  $lua_dns_script                  = undef    # Example: 
  $max_cache_entries               = undef    # Example: 1000000
  $max_cache_ttl                   = undef    # Example: 86400
  $max_mthreads                    = undef    # Example: 2048
  $max_negative_ttl                = undef    # Example: 3600
  $max_packetcache_entries         = undef    # Example: 500000
  $max_tcp_clients                 = undef    # Example: 128
  $max_tcp_per_client              = undef    # Example: 0
  $minimum_ttl_override            = undef    # Example: 0
  $network_timeout                 = undef    # Example: 1500
  $no_shuffle                      = undef    # Example: off
  $packetcache_servfail_ttl        = undef    # Example: 60
  $packetcache_ttl                 = undef    # Example: 3600
  $pdns_distributes_queries        = undef    # Example: no
  $processes                       = undef    # Example: 1
  $query_local_address             = undef    # Example: 0.0.0.0
  $query_local_address6            = undef    # Example: 
  $quiet                           = undef    # Example: 
  $remotes_ringbuffer_entries      = undef    # Example: 0
  $security_poll_suffix            = undef    # Example: secpoll.powerdns.com.
  $serve_rfc1918                   = undef    # Example: 
  $server_down_max_fails           = undef    # Example: 64
  $server_down_throttle_time       = undef    # Example: 60
  $server_id                       = undef    # Example: 
  $single_socket                   = undef    # Example: off
  $soa_minimum_ttl                 = undef    # Example: 0
  $soa_serial_offset               = undef    # Example: 0
  $socket_dir                      = undef    # Example: /var/run/
  $socket_group                    = undef    # Example: 
  $socket_mode                     = undef    # Example: 
  $socket_owner                    = undef    # Example: 
  $spoof_nearmiss_max              = undef    # Example: 20
  $stack_size                      = undef    # Example: 200000
  $threads                         = undef    # Example: 2
  $trace                           = undef    # Example: off
  $udp_truncation_threshold        = undef    # Example: 1680
  $version_string                  = undef    # Example: PowerDNS Recursor 3.6.2 (jenkins@autotest.powerdns.com built 20141031140810 mockbuild@)
}
