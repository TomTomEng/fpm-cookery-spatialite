class LibSqlite < FPM::Cookery::Recipe
     name     'libsqlite'
     version  '3.10.0'
     revision '1'

     description 'libsqlite'

     homepage 'http://www.sqlite.org/download.html'
     source 'https://sqlite.org/2016/sqlite-autoconf-3100000.tar.gz'
     sha256 '43cc292d70711fa7580250c8a1cd7c64813a4a0a479dbd502cce5f10b5d91042'

     def build
          configure
          make
     end

     def install
          make :install, 'DESTDIR' => destdir
     end
end

