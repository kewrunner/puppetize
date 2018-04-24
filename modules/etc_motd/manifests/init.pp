class etc_motd {
  file { "/etc/motd":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/etc_motd/etc_motd"
  }
}
        
