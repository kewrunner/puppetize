class etc_resolv_conf {
  file { "/etc/resolv.conf":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/etc_resolv_conf/etc_resolv_conf"
  }
}
        
