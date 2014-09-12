task :package, [:platform, :pkg] => [:libsqlite, :proj4, :geos, :libspatialite, :spatialitetools] do |t, args|
	log_params(t, args)
	#mkdir "pkg"
	#cp "libsqlite/pkg/*.rpm", "pkg/"
	#cp "libspatialite/pkg/*.rpm", "pkg/"
	#cp "spatialitetools/pkg/*.rpm", "pkg/"
end

task :readosm, [:platform, :pkg] do |t, args|
	log_params(t, args)
	fpm_all(t.name, args.platform, args.pkg)
end

task :freexl, [:platform, :pkg] do |t, args|
	log_params(t, args)
	fpm_all(t.name, args.platform, args.pkg)
end

task :geos, [:platform, :pkg] do |t, args|
	log_params(t, args)
	fpm_all(t.name, args.platform, args.pkg)
end

task :proj4, [:platform, :pkg] do |t, args|
	log_params(t, args)
	fpm_all(t.name, args.platform, args.pkg)
end

task :libsqlite, [:platform, :pkg] do |t, args|
	log_params(t, args)
	fpm_all(t.name, args.platform, args.pkg)
end

task :libspatialite, [:platform, :pkg] do |t, args|
	log_params(t, args)
	fpm_all(t.name, args.platform, args.pkg)
end

task :spatialitetools, [:platform, :pkg] do |t, args|
	log_params(t, args)
	fpm_all(t.name, args.platform, args.pkg)
end

def fpm_all(name, platform, pkg)
	fpm_clean(name)
	fpm_cook(name, platform, pkg)
end

def fpm_clean(name)
	sh "fpm-cook clean %s/%s.rb" % [name, name]
end

def fpm_cook(name, platform, pkg)
	sh "fpm-cook package -p %s -t %s %s/%s.rb" % [platform, pkg, name, name]
end

def log_params(t, args)
	puts "Making %s [%s:%s]" % [ t.name, args.platform, args.pkg ]
end
