class Proj4 < FPM::Cookery::Recipe
   name     'proj4'
   version  '4.9.2'
   revision '1'

   description 'proj4'

   homepage 'http://trac.osgeo.org/proj/'
   source 'http://download.osgeo.org/proj/proj-4.9.2.tar.gz'
   sha256 '60bf9ad1ed1c18158e652dfff97865ba6fb2b67f1511bc8dceae4b3c7e657796'


   def build
        #cd('proj-4.9.2')
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

