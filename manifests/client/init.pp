# == Class: jenkins::client::init
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
class jenkins::client::init {
  include jenkins::client::install
  include jenkins::client::config
  include jenkins::client::service

  File {
    group => $jenkins::params::client::group,
    mode  => $jenkins::params::client::mode,
    owner => $jenkins::params::client::owner,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
