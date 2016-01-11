class LibSpatialite < FPM::Cookery::Recipe
   name     'libspatialite'
   version  '4.3.0'
   revision '1'

   description 'libspatialite'

   homepage 'http://www.gaia-gis.it/fossil/libspatialite/'
   source 'http://www.gaia-gis.it/gaia-sins/libspatialite-4.3.0a.zip'
   sha256 '8012910ea3267a71dcce4650de0510d441c43b334dacfac75d4991e849217a5e'

   build_depends 'libsqlite',
                 'proj4',
                 'geos',
                 'freexl',
                 'expat-devel',
                 'libxml2-devel',
                 'zlib-devel'

   depends  'libsqlite',
            'geos',
            'freexl',
            'proj4'

   def build
        cd('libspatialite-4.3.0a')
        # need to add libsqlite to path
        safesystem('export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"')
        safesystem('export CFLAGS="-I/usr/local/include"')
        safesystem('export LDFLAGS="-L/usr/local/lib"')
        safesystem('export PATH="/usr/local/bin":$PATH')
        configure
        make
    end

    def install
       make :install, 'DESTDIR' => destdir
   end
end

