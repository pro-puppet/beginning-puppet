
user { 'hunner':
  ensure     => 'present',
  comment    => 'Hunter Haugen',
  groups     => ['sudo'],
  home       => '/home/hunner',
  managehome => true,
  shell      => '/bin/zsh',
  uid        => '9644',
}

