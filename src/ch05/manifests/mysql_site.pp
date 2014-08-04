node client1 {

  class { '::mysql::server':
    root_password    => 'super-secret-password',
    override_options => {
      'mysqld' => {
        'max_connections'  => '1024',
      }
    }
  }

}
