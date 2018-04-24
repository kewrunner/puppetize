class users::damien {

  user { 'damien':
    comment => "Damien's account",
    home => "/home/damien",
    shell => "/bin/bash",
    uid => 1500,
    gid => 1500,
    managehome => true,
    ensure => present,
    password => '$1$hwQfY6qi$9Bjy67R3yEXKaxpPIm.lM0',
  }

  group { 'damien':
    gid => "1500",
    ensure => present
  }
  
  file { "/home/damien/.bashrc":
      ensure  => present,
      owner   => damien,
      group   => damien,
      mode    => 0644,
      source  => "puppet:///modules/users/dot_bashrc_user"
  }
  
  ssh_authorized_key{ 'damien':
    user => "damien",
    ensure => present,
    type => "ssh-rsa",
    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDCZuAEOu+poVvd3D1+d2MNpYZ+3td5vThowm+3p+z9P8UqWX8zoZZBdpHhuZ3o7+W/jDj/Hi+tmYQgG4VdxnP7JpGK1//Q04bPxQzB7P5z/H0P7DadB4bxCuU0YN6uv/RPON/YFfbU9yNwaxkCpZlChEkidhMqHf2Y2e3NIGZStOfKFCd9L9W3u+78eeqaJ7R5rdXt+pBxSJ6jceoa5tWQH6Rb7Iw1ORwiv6O9N0YEWu4Jh8ak5mpmH/d+CTlIpZcjX2fxk6oE0kcaXpHjaEZiiyQYl5MqSYQk3d+35WMkbwX39iF5NIgSbRTE9ZuWfUPzKyEakQIty2X6oPTFbwjf",
    name => "Damien Michalosky"
  }
}
                           
