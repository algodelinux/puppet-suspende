class puppet-suspende {

  require puppet-suspende::config
  include puppet-suspende::install, puppet-nfsv4::service 
}
