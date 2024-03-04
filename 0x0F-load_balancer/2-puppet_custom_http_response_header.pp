#!/usr/bin/env bash
# installs nginx with puppet and configures it with the reqs

package {'nginx':
  ensure => installed
}

file { '/var/www/hmtl':
  ensure => directory
}

file {'/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!'
}

file {'/var/www/html/404.html':
  ensure  => present,
  content => "Ceci n'est pas une page"
}

file {'/etc/nginx/sites-available/default':
  ensure  => present,
  content => '
   server {
    listen 80 default_server;
    listen [::]:80 default_server;
    add_header X-Served-By $hostname;
    root /var/www/html;
    index index.html index.htm;

    location /redirect_me {
      return 301 https://github.com/priest099;
    }
    error_page 404 /404.html;
    location /404 {
      root /var/www/html;
      internal;
    }
}',
}

service {'nginx':
  ensure  => running,
  enable  => true,
  require => File['/etc/nginx/sites-available/default'],
}

