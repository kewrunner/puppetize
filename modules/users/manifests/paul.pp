class users::tim-adm {

  user { 'tim-adm':
    comment => "tim's account",
    home => "/home/tim-adm",
    shell => "/bin/bash",
    uid => 1500,
    gid => 1500,
    managehome => true,
    ensure => present,
    password => '#$%^U&^%FGYTFGUHIGYKYTGKJYFIYYGjygkuyfukygjkhgjk',
  }

  group { 'tim-adm':
    gid => "1500",
    ensure => present
  }
  
  file { "/home/tim-adm/.bashrc":
      ensure  => present,
      owner   => tim-adm,
      group   => tim-adm,
      mode    => 0644,
      source  => "puppet:///modules/users/dot_bashrc_user"
  }
  
  ssh_authorized_key{ 'tim-adm':
    user => "tim-adm",
    ensure => present,
    type => "ssh-rsa",
    key => "kj;dljaslkdfjlakjsdflakjsdlfkjalsdkfjal;skdjflka",
    name => "tim"
  }
}
                           
