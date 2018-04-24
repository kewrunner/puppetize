class mysql {
  
#  file { "/etc/my.cnf":
#    owner => root,
#    group => root,
#    mode => 644,
#    source => "puppet:///ntp/etc_my.cnf"
#  }
  package { "mysql-server":
    ensure => installed,
  }
  service { "mysqld":
    ensure => running,
    enable => true,
    subscribe  => [ Package["mysql-server"] ],
  }
}        
