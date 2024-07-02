# uses puppet to connect and make changes to local ssh config file
include 'stdlib'

file_line {'Turn off passwd auth':
  ensure => present,
  path   => '/etc/ssh/config',
  line   => 'PasswordAuthentication no',
}

file_line {'Declare identity file':
  ensure => present,
  path   => '/etc/ssh/config',
  line   => 'IdentityFile ~/.ssh/school',
}
