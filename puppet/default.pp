include apache

$application = 'app'
$user = 'www-data'
$group = 'www-data'

file{"/home/$user/application":
  ensure => 'directory'
}

file{"/var/www/$application":
  ensure => link,
  target => "/home/$user/application/web"
}

apache::vhost {"$application.local":
  port    => '80',
  docroot => "/var/www/$application",
}

