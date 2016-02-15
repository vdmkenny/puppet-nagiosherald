class nagiosherald{


    package{'nagios-herald':
        ensure => present,
    }

    file{'/etc/icinga/objects/commands/notify-by-herald.cfg':
	owner  => root,
        source => 'puppet:///modules/nagiosherald/notify-by-herald.cfg',
	}

    file{'/usr/local/nagios-herald/etc/config.yml':
        owner  => root,
        source => 'puppet:///modules/nagiosherald/config.yml', 
    }
}
