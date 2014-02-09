file { '/etc/hosts':
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  source => "puppet:///files/hosts/${::osfamily}/hosts"
}
