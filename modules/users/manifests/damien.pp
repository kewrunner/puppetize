class users::damien {

  user { 'peter':
    comment => "peter's account",
    home => "/home/peter",
    shell => "/bin/bash",
    uid => 1500,
    gid => 1500,
    managehome => true,
    ensure => present,
    password => '*********************',
  }

  group { 'peter':
    gid => "1500",
    ensure => present
  }
  
  file { "/home/peter/.bashrc":
      ensure  => present,
      owner   => peter,
      group   => peter,
      mode    => 0644,
      source  => "puppet:///modules/users/dot_bashrc_user"
  }
  
  ssh_authorized_key{ 'peter':
    user => "peter",
    ensure => present,
    type => "ssh-rsa",
    key => "'*********************',",
    name => "Peter"
  }
}
                           
