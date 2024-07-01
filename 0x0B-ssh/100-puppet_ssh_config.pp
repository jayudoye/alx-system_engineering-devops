#!/usr/bin/env bash
# connect with puppet

file_line { 'Declare_identity_file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
}

file_line { 'Turn_off_passwd_auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
}
