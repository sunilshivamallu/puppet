class motd {

  $hostname    = $facts['networking']['fqdn']
  $os_name     = $facts['os']['name']
  $os_release  = $facts['os']['release']['full']


  if $hostname == 'sunilshivamallu-gmail--com2.mylabserver.com' {
    file {'/etc/motd':
      ensure  => file,
      content => "\n\n[ Puppet Master ]  ${hostname} ${os_name} ${os_release}\n\n ",
    }
  }
  elsif $facts['networking']['domain'] == 'mylabserver.com' {
    file {'/etc/motd':
      ensure  => file,
      content => "\n\n[ Puppet Node ]  ${hostname} ${os_name} ${os_release}\n\n ",
    }
  }
}
