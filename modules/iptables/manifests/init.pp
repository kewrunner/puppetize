class iptables {

  #Disable iptables for now
  
  service { "iptables":
    ensure => stopped,
    enable => false,
  }
  service { "ip6tables":
    ensure => stopped,
    enable => false,
  }
}
