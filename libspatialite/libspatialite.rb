class LibSpatialite < FPM::Cookery::Recipe
   name     'libspatialite'
   version  '4.2.0'
   revision '1'

   description 'libspatialite'

   homepage 'http://www.gaia-gis.it/fossil/libspatialite/'
   source 'http://www.gaia-gis.it/gaia-sins/libspatialite-4.2.0.zip'
   sha256 '3c74282366d31717c4c70121ec55c65c028c7e01353b2ecb7bfe2cd4a4e4a4f8'

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
        cd('libspatialite-4.2.0')
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

