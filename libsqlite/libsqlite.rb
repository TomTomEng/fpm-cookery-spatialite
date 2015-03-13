class LibSqlite < FPM::Cookery::Recipe
     name     'libsqlite'
     version  '3.8.8.3'
     revision '1'

     description 'libsqlite'

     homepage 'http://www.sqlite.org/download.html'
     source 'https://sqlite.org/2015/sqlite-autoconf-3080803.tar.gz'
     sha256 '74576964cd9db44c13bf95d6a7c36b06cfdfb2fe4e3e26c9ce1ae0b2e328b411'

     def build
          configure
          make
     end

     def install
          make :install, 'DESTDIR' => destdir
     end
end

