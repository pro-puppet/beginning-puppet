$local_domain = 'example.com' # this is top scope

node 'hostname1' {
  class { 'nginx':
    domain_name => $local_domain,
    workers     => 16,
  }
}

node 'hostname2' {
  $local_domain = 'example.org' # this is node scope
  class { 'nginx':
    domain_name => $local_domain,
    # not providing workers here as the default is good for this node
  }
}
