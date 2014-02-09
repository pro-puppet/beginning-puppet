package { 'apache2':
  ensure => installed,
  before => Service['apache2'],
}

service { 'apache2':
  ensure => running,
}
