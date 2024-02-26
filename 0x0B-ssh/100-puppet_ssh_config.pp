#!/usr/bin/env bash
# puppet code to add config file

file { 'ssh_config':
ensure  => present,
content => "Host *\n\tPasswordAuthentication no\n\tIdentityFile ~/.ssh/school\n\t SendEnv LANG LC_*n\t HashKnownHosts yes\n\tGSSAPIAuthentication yes"
}
