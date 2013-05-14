class supervisor::params {
    $conf_file      = '/etc/supervisord.conf'
    $conf_dir       = '/etc/supervisord.d'
    $system_service = 'supervisord'
    $package        = 'supervisor'
    $init_file      = '/etc/supervisord.init'
    if $::operatingsystem == 'Debian' {
        $supervisorctl  = '/usr/local/bin/supervisorctl'
    } elsif $::operatingsystem == 'Gentoo' {
        $supervisorctl  = '/usr/bin/supervisorctl'
    }
}
