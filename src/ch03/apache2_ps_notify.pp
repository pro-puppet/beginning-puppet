package { 'apache2':
  ensure => installed,
  notify => Service['apache2'],
}

service { 'apache2':
  ensure => running,
}
