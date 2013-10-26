class symfony_application ($name) {
  notify {"create application: $name":}

  $applicationDir = "/home/www-data/application"
  $vhostAvailablePath = "/etc/apache2/sites-available/010_$name.local"
 
  file {$vhostAvailablePath:
    ensure => present,
    content => template("symfony_application/virtualhost"),
    require => [Package['apache2']]
  }

  file {"/etc/apache2/sites-enabled/010_$name.local":
    notify => Service["apache2"],
    ensure => link,
    target => $vhostAvailablePath
  }

  file {"/var/www/$name":
    ensure  => link,
    target  => $applicationDir,
    require => Package["apache2"]
  }  

  notify{"composer install":}
  exec {"composer install":
    cwd       => $applicationDir,
    path      => "/usr/bin",
    command   => "php composer.phar install",
    logoutput => true,
    timeout   => 0,
    user      => "www-data",
    require   => Class["php"]
  }
}
