class mirrors {

  user { 'debian-mirror':
    ensure     => present,
    managehome => true,
  }

  ssh_authorized_key { 'ftpsync@ftp-osl':
    ensure   => present,
    key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAzt6S8cHzc/IUSkuWHudw3CnTQ0z8/mECWypc+qk3hmrZ5JL+1iIOtK6XsDgzvlSd49vg/wUCFBUBbJIzsgD/QyGa7GzkqNt59tL9vKNK6aETCsHqlRZSxk8R1nHwgGkMIkVkAIhohocex0s2J+7qxriQM7bUuEHsTD8pyZmN86NhmEJ4fJfanrAM9ZIH8WYRv3sp+XhEmTr0iVKRhInIfXQDy4QdGuSxkw8vLTuYxVfE0Q8ZdQ9kQ9ZXVLOlu++rHKMBWpPtbMZjIuR2/7qNd1lWU7EIvyLhiVGB5TlmoABJ74q2+c93YrWs0GUc0NkZh9BWGDoWMlLP0rSTvJckyw==',
    options  => ['no-port-forwarding', 'no-X11-forwarding', 'no-agent-forwarding', 'no-pty', 'command="~/bin/ftpsync",from="140.211.166.134"'],
    type     => 'ssh-rsa',
    user     => 'debian-mirror',
  }

}
