# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "reorganise/version"

Gem::Specification.new do |s|
  s.name        = "reorganise"
  s.version     = Reorganise::VERSION
  s.authors     = ["Justin Cossutti"]
  s.email       = ["justin.cossutti@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/reorganise"
  s.summary     = "Sorts and renames your series."
  s.description = "Sorts and renames your series."

  s.rubyforge_project = "resort"


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "tvdb_party"

end
