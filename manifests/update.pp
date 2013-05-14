class supervisor::update {
  exec { 'supervisor::update':
    command     => "$supervisor::params::supervisorctl update",
    logoutput   => on_failure,
    refreshonly => true,
    require     => Service[$supervisor::params::system_service],
  }
}
