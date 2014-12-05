# == Class: pdns
#
# Full description of class pdns here.
#
class pdns {
  include pdns::nameserver
  include pdns::recursor
}
