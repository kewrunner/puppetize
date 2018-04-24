class edge_node_disks {

  #If there is no filesystem or the filesystem is not ext4,
  #puppet will format the drives

  file { [ "/mnt", "/mnt/EDGE1"]:
            ensure => "directory",
  }
          
  exec { "format_sdb":
    command => "/usr/bin/yes | /sbin/mkfs.ext4 /dev/sdb ; /bin/mount -a",
    unless => "/bin/mount | /bin/grep -q sdb",
    require => File  [ "/mnt", "/mnt/EDGE1"],
  }

  #Here is where the mounts get added to /etc/fstab
  
  mount { "/mnt/EDGE1":
    atboot  => true,
    device  => "/dev/sdb",
    ensure  => mounted,
    fstype  => "ext4",
    options => "defaults",
    dump    => "0",
    pass    => "0",
    require => File  [ "/mnt", "/mnt/EDGE1"],
  }
}          
