class ntp {
  
  file { "/etc/ntp.conf":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/ntp/etc_ntp.conf"
  }
  package { "ntp":
    ensure => latest
  }
  service { "ntpd":
    ensure => running,
    enable => true,
    subscribe  => [ Package["ntp"], File["/etc/ntp.conf"] ],
  }
}        
