if $::osfamily == 'Debian' {
  file { '/etc/debian_version':
    owner => 'root',
  }
}
