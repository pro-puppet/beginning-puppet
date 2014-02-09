file { '/etc/nginx/nginx.conf':
  owner   => 'root',
  group   => 'root',
  content => template('nginx/nginx.conf.erb'),
}
