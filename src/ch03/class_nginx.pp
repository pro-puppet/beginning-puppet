class nginx(
  $domain_name,  # this is a required parameter
  $workers = $::processorcount,  # this is an optional parameter
) {

  file { '/etc/nginx/nginx.conf':
    content => template('nginx/nginx.conf'),
  }

}
