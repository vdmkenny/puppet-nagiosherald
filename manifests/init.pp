class nagiosherald{

    package{'git':
        ensure => present,
    }

    exec{ 'git clone':
    command => 'git clone https://github.com/etsy/nagios-herald.git /usr/local/nagios-herald/',
    path    => '/usr/local/bin/:/bin/',
    # path    => [ '/usr/local/bin/', '/bin/' ],  # alternative syntax
  	}

    file{'/etc/icinga/objects/commands.cfg':
	owner  => root,
        source => 'puppet:///modules/nagiosherald/commands.cfg',
	}

    file{'/usr/local/nagios-herald/etc/config.yml':
        owner  => root,
        source => 'puppet:///modules/nagiosherald/config.yml', 
    }
}
