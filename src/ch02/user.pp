
user { 'hunner':
  comment    => 'Hunter Haugen',
  ensure     => 'present',
  groups     => ['sudo'],
  home       => '/home/hunner',
  managehome => true,
  shell      => '/bin/zsh',
  uid        => '9644',
}

