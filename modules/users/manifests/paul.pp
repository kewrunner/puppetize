class users::carvalhop-adm {

  user { 'carvalhop-adm':
    comment => "Paul's account",
    home => "/home/carvalhop-adm",
    shell => "/bin/bash",
    uid => 1500,
    gid => 1500,
    managehome => true,
    ensure => present,
    password => '$6$Fvj6OGwd$Fbvkq6QZN7Ox8mg09EuYDwx5ILpdn4WGyW3zwuG4u87gbl7/MSX5wJOL6l6r0isZcek8e5HTNhC.tpQLyadqX/',
  }

  group { 'carvalhop-adm':
    gid => "1500",
    ensure => present
  }
  
  file { "/home/carvalhop-adm/.bashrc":
      ensure  => present,
      owner   => carvalhop-adm,
      group   => carvalhop-adm,
      mode    => 0644,
      source  => "puppet:///modules/users/dot_bashrc_user"
  }
  
  ssh_authorized_key{ 'carvalhop-adm':
    user => "carvalhop-adm",
    ensure => present,
    type => "ssh-rsa",
    key => "AAAAB3NzaC1yc2EAAAABIwAAAQEA7+LgyEUX/EBIb4LrCPGyzO72wmVIMkhtQbumqR9DqxaaQTrlCzHEiUv+ZXf16qN44yE8Ml5Qg1Afecv/yNtjFcwqoEaVFFQ8CIL3F5ZUbj3O58z6F0Z8Ubs/ZsEewzaD13+PCcdgR9vI7DCYcWnoRnDHb6ZHkJxjMEwSijqVQz6oxiBAxi2o+hgeIvHi0wByJmrYY/cKPNJjNr7t9VL30H/lFSj8+ADAyb1AwN0Cz9dxkx7TmxCm0UI/6hIgf8WjQg8fDpK/8+Ug5IY/Dp5E04GZNsdFTKbdtITVo77xiWtWzLDcGzrqWCqSSy/yFpGcL9Oic0cwezcZ19NvcYzj8Q== carvalhop-adm@HSVPUPPET.quaero.com",
    name => "Paul Carvalho"
  }
}
                           
