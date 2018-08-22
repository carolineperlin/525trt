class apache {
	file{"/etc/puppetlabs/puppet/puppet.conf":
	 	source => "puppet:///modules/apache/puppet.conf",
	 	ensure => present
	}
	service {"puppet":
		ensure => running,
		enable => true,
		subscribe => File["/etc/puppetlabs/puppet/puppet.conf"]
	}
}
