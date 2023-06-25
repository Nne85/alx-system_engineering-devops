# Configure ssh config file
file { 'ssh_config':
  ensure  => file,
  path    => '/etc/ssh/ssh_config',
  content => "PasswordAuthentication no\nIdentityFile ~/.ssh/school\n",
  replace => true,
}
