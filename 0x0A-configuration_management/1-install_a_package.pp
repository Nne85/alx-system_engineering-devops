<<<<<<< HEAD
# Using Puppet, install flask from pip3
=======
# Using Puppet, install flask from pip3.
>>>>>>> 40c36ae0f7359beaaac43f6f65358ab599a4c06a
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
