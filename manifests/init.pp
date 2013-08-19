class tuned {
  $required = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'tuned',
  }

  package { $required: ensure => latest }

}

define tuned::profile {
  exec { tuned-profile:
    path => '/usr/bin',
    command => "tuned-adm profile ${name}",
  }

}
