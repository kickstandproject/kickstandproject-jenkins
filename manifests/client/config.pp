# == Class: jenkins::client::config
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
class jenkins::client::config {
  include jenkins::common::config

  file { $jenkins::params::client::defaultfile:
    ensure  => file,
    content => template('jenkins/etc/default/jenkins-slave.erb'),
    group   => 'root',
    mode    => '0644',
    notify  => Class['jenkins::client::service'],
    owner   => 'root',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
