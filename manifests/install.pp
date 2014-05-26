class puppet-suspende::install {

  package { "pm-utils" :
    ensure => present,
    require => Class["puppet-suspende::config"],
    notify =>  Class["puppet-suspende::service"],
  }

  cron { suspende:
    command => "/usr/local/sbin/suspende.sh",
    user    => root,
    minute  => '*/15',
    require => Class["puppet-suspende::config"],
    notify =>  Class["puppet-suspende::service"],
  }
}

