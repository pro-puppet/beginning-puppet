case $::osfamily {
  'Debian': {
    $apache_user = 'www-data'
  }
  'Redhat': {
    $apache_user = 'httpd'
  }
  default: {
    fail("Operating system: ${::osfamily} is not supported.")
  }
}
