class user_suchitra {

  user { 'suchitra_passwd':
   name		=> 'suchitra',
   groups	=> 'wheel',
   managehome	=> 'true',
   password	=> '$1$V2ZNVTWO$cjZ7EfOBe.Nh5PnIxCThH.',
   ensure	=> 'present'
  }

}
