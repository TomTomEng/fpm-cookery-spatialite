class ReadOSM < FPM::Cookery::Recipe
   name     'ReadOSM'
   version  '1.0.0e'
   revision '1'

   description 'readosm'

   homepage 'https://www.gaia-gis.it/fossil/readosm/index'
   source 'http://www.gaia-gis.it/gaia-sins/readosm-sources/readosm-1.0.0e.tar.gz'
   sha256 '1fd839e05b411db6ba1ca6199bf3334ab9425550a58e129c07ad3c6d39299acf'


   def build
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

