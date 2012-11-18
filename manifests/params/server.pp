#
# == Class: jenkins::params::server
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
class jenkins::params::server inherits jenkins::params {
  $defaultfile = $::operatingsystem ? {
    default => '/etc/default/jenkins',
  }

  $packagename = $::operatingsystem ? {
    default => 'jenkins',
  }

  $processname = $::operatingsystem ? {
    default => 'jenkins',
  }

  $servicename = $::operatingsystem ? {
    default => 'jenkins',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
