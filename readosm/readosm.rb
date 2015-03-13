class ReadOSM < FPM::Cookery::Recipe
   name     'ReadOSM'
   version  '1.0.0d'
   revision '1'

   description 'readosm'

   homepage 'https://www.gaia-gis.it/fossil/readosm/index'
   source 'http://www.gaia-gis.it/gaia-sins/readosm-sources/readosm-1.0.0d.tar.gz'
   sha256 'f056d26489610699802a2a44e315750383af303cf7dcdc580c52bb5ed4d136e3'


   def build
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

