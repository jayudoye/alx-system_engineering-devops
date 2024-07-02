#!/usr/bin/env bash
# uses puppet to connect and make changes to local ssh config file

file_line {'Turn off passwd auth':
  ensure => present,
  path   => '/home/.ssh/config',
  line   => 'PasswordAuthentication no',
}

file_line {'Declare identity file':
  ensure => present,
  path   => '/home/.ssh/config',
  line   => 'IdentityFile /home/.ssh/school',
}
