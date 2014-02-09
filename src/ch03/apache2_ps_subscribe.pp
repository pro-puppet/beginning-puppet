package { 'apache2':
  ensure => installed,
}

service { 'apache2':
  ensure    => running,
  subscribe => Package['apache2'],
}
