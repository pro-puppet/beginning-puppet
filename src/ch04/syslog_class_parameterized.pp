class syslog (
  $remoteserver,
){

  package { 'rsyslog':
    ensure => present,
  }

  service { 'rsyslog':
    ensure => running,
    enable => true,
  }

  file { '/etc/rsyslog.d/60-default.conf':
    ensure  => file,
    content => "*.* @${remoteserver}",
    require => Package['rsyslog'],
    notify  => Service['rsyslog'],
  }
	
}

class { 'syslog':
  remoteserver => 'loghost1.example.org',
}
