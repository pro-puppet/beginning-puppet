class syslog {

  package { 'rsyslog':
    ensure => present,
  }

  service { 'rsyslog':
    ensure => running,
    enable => true,
  }

  file { '/etc/rsyslog.d/60-default.conf':
    ensure  => file,
    content => '*.* @remotesyslog.example.org',
    require => Package['rsyslog'],
    notify  => Service['rsyslog'],
  }
	
}

include syslog
