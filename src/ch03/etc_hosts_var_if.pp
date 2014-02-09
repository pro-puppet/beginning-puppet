$conf_dir = '/etc'

if $::osfamily == 'Debian' {
  $apache_user = 'www-data'
} else {
  $apache_user = 'httpd'
}

file { "${conf_dir}/httpd/vhosts/vhost1.conf":
  owner => $apache_user,
}

file { "${conf_dir}/httpd/vhosts/vhost2.conf":
  owner => $apache_user,
}
