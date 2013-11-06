class php {
  include common

  package {"php5":
    ensure => installed,
    require => Exec["apt-get update"]
  }  
  package {"php5-intl":
    ensure => installed
  }  
}
