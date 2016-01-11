class SpatialiteTools < FPM::Cookery::Recipe
     name     'spatialitetools'
     version  '4.3.0'
     revision '1'

     description 'spatialitetools'

     homepage "https://www.gaia-gis.it/fossil/spatialite-tools/index"
     source "http://www.gaia-gis.it/gaia-sins/spatialite-tools-4.3.0.tar.gz"
     sha256 "f739859bc04f38735591be2f75009b98a2359033675ae310dffc3114a17ccf89"
 
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