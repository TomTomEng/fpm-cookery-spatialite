class Freexl < FPM::Cookery::Recipe
   name     'freexl'
   version  '1.0.0i'
   revision '1'

   description 'freexl'

   homepage 'https://www.gaia-gis.it/fossil/freexl'
   source 'http://www.gaia-gis.it/gaia-sins/freexl-sources/freexl-1.0.0i.tar.gz'
   sha256 'facef8070230730b16b06c98874c35046942be153236cc348b2898dfa7443b23'


   def build
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

