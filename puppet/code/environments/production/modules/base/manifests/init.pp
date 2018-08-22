class base{
	case $::osfamily{
		"RedHat": {
			$pacotes = ["epel-release","git","vim","sysstat","htop","figlet"]
			$web = "httpd"
		}
		"Debian": {
		        $pacotes = ["cowsay","git","vim","sysstat","htop","figlet"]
                        $web = "apache2"

		}	
	}	
	package{$pacotes:
		ensure => present
	}
	package{$web:
		ensure => present
	}
	user{"devops":
		ensure => present,
		shell => "/bin/bash"
	}
}
