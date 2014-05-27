
user { 'jenkins':
  ensure     => 'present',
  comment    => 'Jenkins Build User',
  home       => '/home/jenkins',
  managehome => true,
}

