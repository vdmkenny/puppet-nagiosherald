class nagiosherald{
    
    
    $graphiteserver = 'graphite2.internal.inuits.eu',
    $logstashserver = 'https://kibana.inuits.eu:9200',
    $logstashfrontend = 'https://kibana.inuits.eu/index.html#/dashboard/file/logstash.json?from=%{from}&to=%{to}&query=%{query}',
    $resultfieldtruncate = '200',
    $numresults = '10',
    $logfile = '/tmp/nagios-herald.log',
    $formatterdir = '/usr/local/nagios-herald-formatters',
    $icinga = true,


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
