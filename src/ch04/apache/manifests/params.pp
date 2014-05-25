class apache::params {

  case $::osfamily {
    'Debian': {
      $package_name = 'apache2'
      $service_name = 'apache2'
     }
    'Redhat': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    default: {
      fail("${::osfamily} is not supported by the apache module")
    }
  }

}
