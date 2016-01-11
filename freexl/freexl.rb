class Freexl < FPM::Cookery::Recipe
   name     'freexl'
   version  '1.0.2'
   revision '1'

   description 'freexl'

   homepage 'https://www.gaia-gis.it/fossil/freexl'
   source 'http://www.gaia-gis.it/gaia-sins/freexl-sources/freexl-1.0.2.tar.gz'
   sha256 'b39a4814a0f53f5e09a9192c41e3e51bd658843f770399023a963eb064f6409d'


   def build
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

