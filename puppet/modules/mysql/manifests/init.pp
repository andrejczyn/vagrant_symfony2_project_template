class mysql{
  include common

  package{"mysql-server":
    ensure => installed,
    require => Exec["apt-get update"]
  }

  service{"mysql":
    ensure  => running,
    enable  => true,
    require => Package["mysql-server"]
  }
}