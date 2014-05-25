class apache (
  $package_name = $::apache::params::package_name,
  $service_name = $::apache::params::service_name,
) inherits ::apache::params {


  package { 'apache2':
    name   => $package_name,
    ensure => installed,
  }

  service { 'apache2':
    name    => $service_name,
    ensure  => running,
    enable  => true,
    require => Package['apache2'],
  }

}
