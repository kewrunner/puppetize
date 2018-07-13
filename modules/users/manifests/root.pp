class users::root {
  user { 'root':
    ensure => present,
    password => 'hjkaljsdhflkjahsdlkfjhalksjd',
  } 

  file { "/root/.bashrc":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => 0644,
    source  => "puppet:///modules/users/dot_bashrc_root"
  }
      
  ssh_authorized_key{ 'root':
    user => "root",
    ensure => present,
    type => "ssh-rsa",
    key => "asdkjfhaskdfjlaksjdf;lkajs;dlfkjas;ldkjfkal;ksjdfl;",
    #name => "peter"
  }
}
                           
