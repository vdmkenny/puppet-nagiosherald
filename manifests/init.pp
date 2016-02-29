class nagiosherald{


    package{'nagios-herald':
        ensure => present,
    }

    package{'app_conf':
        ensure   => present,
        provider => 'gem',
    }

    package{'choice':
        ensure   => present,
        provider => 'gem',
    }

    package{'mail':
        ensure   => present,
        provider => 'gem',
    }


}
