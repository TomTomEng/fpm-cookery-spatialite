class Proj4 < FPM::Cookery::Recipe
   name     'proj4'
   version  '4.8.0'
   revision '1'

   description 'proj4'

   homepage 'http://trac.osgeo.org/proj/'
   source 'http://download.osgeo.org/proj/proj-4.8.0.zip'
   sha256 'b502df56db315e358d4e73a268426d7b0a17a7a5644d5339e8c270fa3c6c72ec'


   def build
        cd('proj-4.8.0')
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

