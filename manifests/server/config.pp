# == Class: jenkins::server::config
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
class jenkins::server::config {
  include jenkins::common::config

  file { $jenkins::params::server::defaultfile:
    ensure  => file,
    content => template('jenkins/etc/default/jenkins.erb'),
    group   => 'root',
    mode    => '0644',
    notify  => Class['jenkins::server::service'],
    owner   => 'root',
    require => Class['jenkins::server::install'],
  }
}

# vim:sw=2:ts=2:expandtab
