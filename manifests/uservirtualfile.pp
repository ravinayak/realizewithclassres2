class realizewithclassres2::uservirtualfile {
  user {'neo5':
    ensure => present,
  }
  file{'/codetestfiles/virtualfile.txt':
    ensure  => file,
    owner   => 'neo5',
    group   => 'neo5',
    content => 'this is a virtual file - with contents and is read only',
    mode    => '0644',
    tag     => 'virtualfiles'
  }

  file{'/codetestfiles/virtualexecfile.txt':
    ensure => file,
    owner  => 'vagrant',
    group  => 'vagrant',
    source =>'puppet:///modules/virtualres/listdir.bash',
    mode   => '0755',
    tag    => 'virtualfiles'
  }
}
