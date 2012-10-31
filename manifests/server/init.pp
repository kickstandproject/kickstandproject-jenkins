# == Class: jenkins::server::init
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
class jenkins::server::init {
  include jenkins::server::install
  include jenkins::server::config
  include jenkins::server::service

  File {
    group   => $jenkins::params::group,
    mode    => $jenkins::params::mode,
    owner   => $jenkins::params::owner,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
