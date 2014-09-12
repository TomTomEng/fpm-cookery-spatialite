class ReadOSM < FPM::Cookery::Recipe
   name     'ReadOSM'
   version  '1.0.0'
   revision '1'

   description 'readosm'

   homepage 'https://www.gaia-gis.it/fossil/readosm/index'
   source 'http://www.gaia-gis.it/gaia-sins/readosm-1.0.0b.tar.gz'
   sha256 'ed7e0d17fbfc7574b097e2358a143788eba23e0477e7108237f4b0aac3d85710'


   def build
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

