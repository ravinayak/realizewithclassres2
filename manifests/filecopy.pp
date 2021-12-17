class realizewithclassres2::filecopy{

  include realizewithclassres1::uservirtualfile

  file { '/etc/filecopyrealizeres2':
    ensure => file,
    owner  => 'neo5',
    group  => 'neo5',
    mode   => '0755',
    source => '/etc/virtualexecfile.txt',
  }

}
