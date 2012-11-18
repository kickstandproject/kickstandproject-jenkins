# == Class: jenkins::server::service
#
# === Authors
#
# Paul Belanger <paul.belanger@polybeacon.com>
#
# === Copyright
#
# Copyright (C) 2012, PolyBeacon, Inc.
#
# This program is free software, distributed under the terms
# of the Apache License, Version 2.0. See the LICENSE file at
# the top of the source tree.
#
class jenkins::server::service {
  service { $jenkins::params::server::servicename:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => $jenkins::params::hasstatus,
    require    => Class['jenkins::server::config'],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
