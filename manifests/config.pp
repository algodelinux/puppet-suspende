class puppet-suspende::config {

   file { "/usr/local/sbin/suspende.sh":
          source => "puppet:///modules/puppet-suspende/suspende.sh",
          owner => root, group => root, mode => 750
   }

}
