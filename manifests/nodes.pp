node base_node {

  #Editors
  package { "emacs": ensure => latest }
  package { "nano": ensure => latest }

  #Operational
  package { "openssh-clients": ensure => installed }
  package { "screen": ensure => latest }
  package { "tmux": ensure => latest }
  package { "nfs-utils": ensure => installed }

  #Utilities
  package { "curl": ensure => latest }
  package { "wget": ensure => latest }
  package { "man": ensure => latest }
  package { "nc": ensure => latest }
  package { "bind-utils": ensure => latest }
  package { "tree": ensure => latest }

  
  #Troubleshooting tools
  package { "atop": ensure => latest }
  package { "iotop": ensure => latest }
  package { "tcpdump": ensure => latest }
  package { "sysstat": ensure => latest }
  package { "lsof": ensure => latest }
  
  #monitorring
  package { "net-snmp": ensure => installed }
  package { "net-snmp-utils": ensure => installed }

  include etc_motd
  include etc_resolv_conf
  include etc_hosts
  include ssh
  include users
  include selinux
  include iptables
  include puppet_agent
  include ntp
}


## Special configuration for the specific server roles

node edge_node inherits base_node {

  notify{"\n\n ****** Running EDGE_NODE configuration ****** \n\n": }


  include edge_node_disks
  
  include mysql

  #ConnectorJ Driver for Java programs to connect to mysql
  #package { "mysql-connector-java": ensure => installed }
  package { "mytop": ensure => latest }
}

node name_node inherits base_node {
  notify{"\n\n ****** Running NAME_NODE configuration ****** \n\n": }
}

node data_node inherits base_node {
  notify{"\n\n ****** Running DATA_NODE configuration ****** \n\n": }

#  file { [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"]:
#    ensure => "directory",
#  }
                    

  include data_node_disks

}



## Edge Nodes

node 'HSVHEDGED.quaero.com' inherits edge_node {
  notify{"Running for server HSVHEDGED.quaero.com": }
  include edge_node_disks
}

node 'HSVHNBCE01P.quaero.com' inherits edge_node {
  notify{"Running for server HSVHNBCE01P.quaero.com": }
  include edge_node_disks
}
node 'HSPHCM01P.quaero.com' inherits edge_node {
  notify{"Running for server HSPHCM01P.quaero.com": }
  include edge_node_disks
}

## Name Nodes

node 'HSPHNAME01D.quaero.com' inherits name_node {
    notify{"Running for server HSPHNAME01D.quaero.com": }
}

node 'HSPHNAME02D.quaero.com' inherits name_node {
    notify{"Running for server HSPHNAME02D.quaero.com": }
}

node 'HSPHNBCN01P.quaero.com' inherits name_node {
    notify{"Running for server HSPHNBCN01P.quaero.com": }
}

node 'HSPHNBCN02P.quaero.com' inherits name_node {
    notify{"Running for server HSPHNBCN02P.quaero.com": }
}




## Data Nodes

node 'HSPHDATA01D.quaero.com' inherits data_node {
  notify{"Running for server HSPHDATA01D.quaero.com": }
}
node 'HSPHDATA02D.quaero.com' inherits data_node {
  notify{"Running for server HSPHDATA02D.quaero.com": }
}
node 'HSPHDATA03D.quaero.com' inherits data_node {
  notify{"Running for server HSPHDATA03D.quaero.com": }
}
node 'HSPHDATA04D.quaero.com' inherits data_node {
  notify{"Running for server HSPHDATA04D.quaero.com": }
}
node 'HSPHDATA05D.quaero.com' inherits data_node {
  notify{"Running for server HSPHDATA05D.quaero.com": }
}
node 'HSPHDATA06D.quaero.com' inherits data_node {
  notify{"Running for server HSPHDATA06D.quaero.com": }
}
node 'HSPHDATA07D.quaero.com' inherits data_node {
  notify{"Running for server HSPHDATA07D.quaero.com": }
}
node 'HSPHDATA08D.quaero.com' inherits data_node {
  notify{"Running for server HSPHDATA08D.quaero.com": }
}
node 'HSPHNBCD14P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD14P.quaero.com": }
}
node 'HSPHNBCD13P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD13P.quaero.com": }
}
node 'HSPHNBCD12P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD12P.quaero.com": }
}
node 'HSPHNBCD11P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD11P.quaero.com": }
}
node 'HSPHNBCD10P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD10P.quaero.com": }
}
node 'HSPHNBCD09P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD09P.quaero.com": }
}
node 'HSPHNBCD08P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD08P.quaero.com": }
}
node 'HSPHNBCD07P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD07P.quaero.com": }
}
node 'HSPHNBCD01P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD01P.quaero.com": }
}
node 'HSPHNBCD02P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD02P.quaero.com": }
}
node 'HSPHNBCD03P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD03P.quaero.com": }
}
node 'HSPHNBCD04P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD04P.quaero.com": }
}
node 'HSPHNBCD05P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD05P.quaero.com": }
}
node 'HSPHNBCD06P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD06P.quaero.com": }
}
node 'HSPHNBCD15P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD15P.quaero.com": }
}
node 'HSPHNBCD16P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD16P.quaero.com": }
}
node 'HSPHNBCD17P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD17P.quaero.com": }
}
node 'HSPHNBCD18P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD18P.quaero.com": }
}
node 'HSPHNBCD19P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD19P.quaero.com": }
}
node 'HSPHNBCD20P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD20P.quaero.com": }
}
node 'HSPHNBCD21P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD21P.quaero.com": }
}
node 'HSPHNBCD22P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD22P.quaero.com": }
}
node 'HSPHNBCD23P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD23P.quaero.com": }
}
node 'HSPHNBCD24P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD24P.quaero.com": }
}
node 'HSPHNBCD25P.quaero.com' inherits data_node {
  notify{"Running for server HSPHNBCD25P.quaero.com": }
}
