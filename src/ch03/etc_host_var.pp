$conf_dir = '/etc'

file { "${conf_dir}/hosts":
  owner => 'root',
  group => 'root',
  mode  => '0644',
}
