#
# == Class: jenkins::params::client
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
class jenkins::params::client inherits jenkins::params {
  $defaultfile = $::operatingsystem ? {
    default => '/etc/default/jenkins-slave',
  }

  $packagename = $::operatingsystem ? {
    default => 'jenkins-slave',
  }

  $processname = $::operatingsystem ? {
    default => 'jenkins-slave',
  }

  $servicename = $::operatingsystem ? {
    default => 'jenkins-slave',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
