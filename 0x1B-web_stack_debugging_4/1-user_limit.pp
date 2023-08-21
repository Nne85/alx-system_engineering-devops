#fix sign in error
user { 'holberton':
  uid        => '1000',
  gid        => '1000',
  shell      => '/bin/bash',
  home       => '/home/holberton',
  managehome => true,
  limit      => {
    'openfiles' => 1024,
  },
}
