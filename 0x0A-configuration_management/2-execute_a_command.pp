<<<<<<< HEAD
# Using Puppet, create a manifest that kills a process named killmenow
exec { 'kill':
  command => 'pkill -f killmenow',
  path    => ['/usr/bin', '/usr/sbin'],
=======
#Using Puppet, create a manifest that kills a process named killmenow
exec { 'killmenow':
  command => 'pkill -f killmenow',
  path    => ['/usr/bin', '/usr/sbin']
>>>>>>> 40c36ae0f7359beaaac43f6f65358ab599a4c06a
}
