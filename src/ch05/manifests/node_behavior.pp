node  /client[0-9]{2}$/ {
  notify{ 'client1 regex': }
}

node client1 {
  notify{ 'client1': }
}

node 'client1.lan' {
  notify{ 'client1.lan': }
}
