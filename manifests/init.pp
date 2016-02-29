class nagiosherald{

    package{'ruby':
        ensure => '1.9.2',
    }

    package{'gem':
        ensure => present,
    }

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
