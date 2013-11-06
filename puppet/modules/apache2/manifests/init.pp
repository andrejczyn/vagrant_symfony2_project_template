class apache2 {
  include common

  package {"apache2":
    ensure => installed,
    require => Exec["apt-get update"]
  }

  service {"apache2":
    ensure    => running,
    enable    => true
  }
}
