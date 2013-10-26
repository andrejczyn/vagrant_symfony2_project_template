exec { "apt-get update":
    command => "/usr/bin/apt-get update"
}

include apache2
include php

class{"symfony_application":
  name => "application"
}
