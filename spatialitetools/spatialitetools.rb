class SpatialiteTools < FPM::Cookery::Recipe
     name     'spatialitetools'
     version  '4.2.0'
     revision '1'

     description 'spatialitetools'

     homepage "https://www.gaia-gis.it/fossil/spatialite-tools/index"
     source "http://www.gaia-gis.it/gaia-sins/spatialite-tools-4.2.0.tar.gz"
     sha256 "890c4cdab5b6b450df4f98341110dd79df20b3cc3af4fecd6e4a06cfc718cdbc"
 
     depends  'libspatialite'

     def build
        safesystem('export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"')
        configure
        make
     end

     def install
        make :install, 'DESTDIR' => destdir
     end
end