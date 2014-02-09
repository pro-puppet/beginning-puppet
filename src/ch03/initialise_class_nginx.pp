class { 'nginx':
  domain_name => 'example.com',
  workers     => 16,
}
