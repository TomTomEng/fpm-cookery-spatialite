class Geos < FPM::Cookery::Recipe
   name     'geos'
   version  '3.4.2'
   revision '1'

   description 'geos'

   homepage 'http://trac.osgeo.org/geos/'
   source 'http://download.osgeo.org/geos/geos-3.4.2.tar.bz2'
   sha256 '15e8bfdf7e29087a957b56ac543ea9a80321481cef4d4f63a7b268953ad26c53'


   def build
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

