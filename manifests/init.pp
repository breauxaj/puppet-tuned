class tuned {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'tuned',
  }

  package { $required: ensure => latest }

}
