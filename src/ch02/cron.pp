
cron { 'remove_temp_files':
  command => '/root/remove_temp_files.sh',
  user    => root,
  hour    => 2,
  minute  => 0
}
