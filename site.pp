node 'sunilshivamallu-gmail-com2.mylabserver.com' {
  include user_suchitra

  cron { 'addtestcronforuser':
    user		=> 'user',
    command 		=> '/bin/echo date >/dev/null',
    minute		=> '0',
    hour		=> '*/1',
    monthday 		=> ['10-20'],
    ensure		=> 'present',
  }
}

node /^sunilshivamallu-gmail-com[1|3].*$/ {
  include ssh
}

node default {

  include motd
}
