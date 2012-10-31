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
  file { $jenkins::params::basedir:
    ensure  => directory,
    require => Class['jenkins::server::install'],
  }

  file { $jenkins::params::defaultfile:
    ensure  => file,
    content => template('jenkins/etc/default/jenkins.erb'),
    group   => 'root',
    mode    => '0644',
    notify  => Class['jenkins::server::service'],
    owner   => 'root',
  }

  apache::function::virtualhost-proxy { $jenkins::server::hostname:
    port  => '8080',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
