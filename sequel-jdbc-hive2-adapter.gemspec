# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sequel-jdbc-hive2-adapter/version'

Gem::Specification.new do |s|
  s.name        = 'sequel-jdbc-hive2-adapter'
  s.version     = Sequel::Jdbc::Hive2::Adapter::VERSION
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

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'sequel'
  s.add_development_dependency 'jdbc-hive2'
end
