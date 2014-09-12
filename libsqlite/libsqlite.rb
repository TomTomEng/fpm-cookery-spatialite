class LibSqlite < FPM::Cookery::Recipe
     name     'libsqlite'
     version  '3.8.6'
     revision '1'

     description 'libsqlite'

     homepage 'http://www.sqlite.org/download.html'
     source 'http://www.sqlite.org/2014/sqlite-autoconf-3080600.tar.gz'
     sha256 '53bab14255bc16c3d73fdbe54b364c1764709d68dda167587f8026c98b9f4e95'

     def build
          configure
          make
     end

     def install
          make :install, 'DESTDIR' => destdir
     end
end

