# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yakka/version"

Gem::Specification.new do |s|
  s.name        = "yakka"
  s.version     = Yakka::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrey Ognevsky"]
  s.email       = ["a.ognevsky@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Simple gem to restrict time-killing resources}
  s.description = %q{Update your own restriction list to avoid visits to time-killing resources while working}

  s.add_dependency "ghost"
  s.add_dependency "thor"
  s.add_dependency "rainbow"

  s.rubyforge_project = "yakka"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
