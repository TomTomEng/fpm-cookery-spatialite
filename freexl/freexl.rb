class Freexl < FPM::Cookery::Recipe
   name     'freexl'
   version  '1.0.0'
   revision '1'

   description 'freexl'

   homepage 'https://www.gaia-gis.it/fossil/freexl'
   source 'http://www.gaia-gis.it/gaia-sins/freexl-1.0.0g.tar.gz'
   sha256 'cf2b110f5fc7089fa61c7421f59caa4125b13087b4686ed82dba7abedf2ec266'


   def build
        #cd('freexl-1.0.0g')
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

