class Geos < FPM::Cookery::Recipe
   name     'geos'
   version  '3.5.0'
   revision '1'

   description 'geos'

   homepage 'http://trac.osgeo.org/geos/'
   source 'http://download.osgeo.org/geos/geos-3.5.0.tar.bz2'
   sha256 '49982b23bcfa64a53333dab136b82e25354edeb806e5a2e2f5b8aa98b1d0ae02'


   def build
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

