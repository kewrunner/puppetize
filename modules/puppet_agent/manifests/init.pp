class puppet_agent {

  file { "/etc/puppet/puppet.conf":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/puppet_agent/etc_puppet_puppet.conf"
  }

  package { "puppet":
    ensure => installed
  }

  service { "puppet":
    ensure => running,
    enable => true,
    subscribe  => [ Package["puppet"], File["/etc/puppet/puppet.conf"] ],
  }
}
                    
