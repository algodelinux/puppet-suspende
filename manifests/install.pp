class puppet-suspende::install {

  package { "pm-utils" :
    ensure => present,
  }

  cron { suspende:
    command => "/usr/local/sbin/suspende.sh",
    user    => root,
    minute  => '*/30',
  }
}

