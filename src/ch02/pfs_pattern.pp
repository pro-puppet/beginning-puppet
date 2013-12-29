
package { 'nagios-nrpe-server':
  ensure  => installed,
}

file { '/etc/nagios/nrpe.cfg':
  owner   => root,
  group   => root,
  mode    => '0644',
  source  => 'puppet:///modules/nrpe/nrpe.cfg',
  require => Package['nagios-nrpe-server'],
}

service { 'nagios-nrpe-server':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nagios/nrpe.cfg'],
}
