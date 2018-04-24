class etc_hosts {
  file { "/etc/hosts":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/etc_hosts/etc_hosts"
  }
}
