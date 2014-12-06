# == Class: pdns
#
# Full description of class pdns here.
#
# === Parameters
#
# [nameserver]
#   Default set to true. Installs and configures PowerDNS nameserver.
#
# [recursor]
#   Default set to true. Installs and configures PowerDNS recursor.
#
class pdns (
  $nameserver = true,
  $recursor = true
) {
  if $nameserver {
    include pdns::nameserver
  }
  if $recursor {
    include pdns::recursor
  }
}
