# Example apache class
class apache (
  $package_name = $::apache::params::package_name,
  $service_name = $::apache::params::service_name,
) inherits ::apache::params {


  package { 'apache2':
    ensure => installed,
    name   => $package_name,
  }

  service { 'apache2':
    ensure  => running,
    name    => $service_name,
    enable  => true,
    require => Package['apache2'],
  }

}
