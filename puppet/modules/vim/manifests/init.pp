class vim {
  include common

  package {"vim":
    ensure  => installed,
    require => Exec['apt-get update']
  }
}
