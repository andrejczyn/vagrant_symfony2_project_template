class php {
  notify {"php5":}
  package {"php5":
    ensure => installed
  }  
  package {"php5-intl":
    ensure => installed
  }  
}
