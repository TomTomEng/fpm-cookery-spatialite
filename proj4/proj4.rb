class Proj4 < FPM::Cookery::Recipe
   name     'proj4'
   version  '4.9.1'
   revision '1'

   description 'proj4'

   homepage 'http://trac.osgeo.org/proj/'
   source 'http://download.osgeo.org/proj/proj-4.9.1.tar.gz'
   sha256 'fca0388f3f8bc5a1a803d2f6ff30017532367992b30cf144f2d39be88f36c319'


   def build
        cd('proj-4.9.1')
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

