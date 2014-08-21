class mirrors {

  user { 'debian-mirror':
    ensure     => present,
    managehome => true,
  }

  ssh_authorized_key { 'ftpsync@ftp-osl':
    ensure   => present,
    key      => hiera('osl_ftpsync_public_key'),
    options  => hiera('osl_ftpsync_public_key_options'),
    type     => hiera('osl_ftpsync_public_key_type'),
    user     => 'debian-mirror',
  }

}
