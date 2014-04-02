Gem::Specification.new do |s|
  s.name        = 'sequel-jdbc-hive2-adapter'
  s.version     = '0.0.1'
  s.authors     = ['Josh Ferguson']
  s.email       = %w(josh@modeanalytics.com)
  s.homepage    = 'https://github.com/mode/sequel-hive2-adapter'
  s.summary     = %q{Sequel adapter for Hive/Impala}
  s.description = %q{Use this adapter to use sequel to query Hive and Impala clusters}

  s.rubyforge_project = 'sequel-jdbc-hive2-adapter'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_runtime_dependency 'jdbc-hive2'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'sequel'
end
