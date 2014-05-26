class puppet-suspende::service {

  service { "cron" :
    ensure => running,
    require => Class["puppet-suspende::install"],
    hasstatus => true,
    hasrestart => true,
    enable => true,
  }

}
