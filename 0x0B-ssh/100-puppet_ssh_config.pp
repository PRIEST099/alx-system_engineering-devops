#!/usr/bin/env bash
# puppet code to add config file

file { '/etc/ssh/ssh_config':
ensure  => present
}

file_line { 'Disabling password auth':
path  => '/etc/ssh/ssh_config',
line  => 'PasswordAuthentication no',
match => '^#PasswordAuthentication'
}

file_line { 'Custom Identity File':
path  => '/etc/ssh/ssh_config',
line  => 'IdentityFile ~/.ssh/school',
match => '^#IdentityFilei'
}
