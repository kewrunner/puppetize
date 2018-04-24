class selinux {
  file { "/etc/selinux/config":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/selinux/etc_selinux_config"
  }
}
        
