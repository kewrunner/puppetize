class data_node_disks {

  file { [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"]:
        ensure => "directory",
      }
      

#edited 3.5.13 to change drives to ext4 KFP
  #If there is no filesystem or the filesystem is not ext3,
  #puppet will format the drives
  
  exec { "format_sdb":
    command => "/usr/bin/yes | /sbin/mkfs.ext4 /dev/sdb ; /bin/mount -a",
    unless => "/bin/mount | /bin/grep -q sdb",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
  exec { "format_sdc":
    command => "/usr/bin/yes | /sbin/mkfs.ext4 /dev/sdc ; /bin/mount -a",
    unless => "/bin/mount | /bin/grep -q sdc",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
  exec { "format_sdd":
    command => "/usr/bin/yes | /sbin/mkfs.ext4 /dev/sdd ; /bin/mount -a",
    unless => "/bin/mount | /bin/grep -q sdd",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
  exec { "format_sde":
    command => "/usr/bin/yes | /sbin/mkfs.ext4 /dev/sde ; /bin/mount -a",
    unless => "/bin/mount | /bin/grep -q sde",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
  exec { "format_sdf":
    command => "/usr/bin/yes | /sbin/mkfs.ext4 /dev/sdf ; /bin/mount -a",
    unless => "/bin/mount | /bin/grep -q sdf",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
  exec { "format_sda":
    command => "/usr/bin/yes | /sbin/mkfs.ext4 /dev/sda ; /bin/mount -a",
    unless => "/bin/mount | /bin/grep -q sda",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }

  #Here is where the mounts get added to /etc/fstab
  
  mount { "/mnt/DATA1":
    atboot  => true,
    device  => "/dev/sdb",
    ensure  => mounted,
    fstype  => "ext4",
    options => "defaults",
    dump    => "0",
    pass    => "0",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
  
  mount { "/mnt/DATA2":
    atboot  => true,
    device  => "/dev/sdc",
    ensure  => mounted,
    fstype  => "ext4",
    options => "defaults",
    dump    => "0",
    pass    => "0",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
  
  mount { "/mnt/DATA3":
    atboot  => true,
    device  => "/dev/sdd",
    ensure  => mounted,
    fstype  => "ext4",
    options => "defaults",
    dump    => "0",
    pass    => "0",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }

  mount { "/mnt/DATA4":
    atboot  => true,
    device  => "/dev/sde",
    ensure  => mounted,
    fstype  => "ext4",
    options => "defaults",
    dump    => "0",
    pass    => "0",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
  
  mount { "/mnt/DATA5":
    atboot  => true,
    device  => "/dev/sdf",
    ensure  => mounted,
    fstype  => "ext4",
    options => "defaults",
    dump    => "0",
    pass    => "0",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
  
  mount { "/mnt/DATA6":
    atboot  => true,
    device  => "/dev/sda",
    ensure  => mounted,
    fstype  => "ext4",
    options => "defaults",
    dump    => "0",
    pass    => "0",
    require => File [ "/mnt", "/mnt/DATA1", "/mnt/DATA2", "/mnt/DATA3", "/mnt/DATA4", "/mnt/DATA5", "/mnt/DATA6"],
  }
}          
