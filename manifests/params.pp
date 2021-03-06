#
# == Class: jenkins::params
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
class jenkins::params {
  $basedir = $::operatingsystem ? {
    default => '/var/lib/jenkins',
  }

  $group = $::operatingsystem ? {
    default => 'jenkins',
  }

  $hasstatus = $::operatingsystem ? {
    default => true,
  }

  $mode = $::operatingsystem ? {
    default => '0644',
  }

  $owner = $::operatingsystem ? {
    default => 'jenkins',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
