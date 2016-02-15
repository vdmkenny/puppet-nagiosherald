class nagiosherald(
    
    
    $graphiteserver = 'graphite.example.com',
    $logstashserver = 'http://logstash.example.com:9200',
    $logstashfrontend = 'http://kibana.example.com/index.html#/dashboard/file/logstash.json?from=%{from}&to=%{to}&query=%{query}',
    $resultfieldtruncate = '200',
    $numresults = '10',
    $logfile = '/tmp/nagios-herald.log',
    $formatterdir = '/usr/local/nagios-herald-formatters',
    $icinga = true,
    
    $nagios_cgi = 'https://icinga.example.com/cgi-bin/cmd.cgi',
    $replyto = 'noreply@example.com',

    )
    
    {


    package{'nagios-herald':
        ensure => present,
    }

    file{'/etc/icinga/objects/commands/notify-by-herald.cfg':
	owner  => root,
        #source => 'puppet:///modules/nagiosherald/notify-by-herald.cfg',
	content => template('nagiosherald/notify-by-herald.cfg.erb'),
        }

    file{'/usr/local/nagios-herald/etc/config.yml':
        owner  => root,
        #source => 'puppet:///modules/nagiosherald/config.yml',
        content => template('nagiosherald/config.yml.erb'),
    }
}
