# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "thumbit/version"

Gem::Specification.new do |s|
  s.name        = "thumbit"
  s.version     = Thumbit::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Madhusudhan Srinivasa"]
  s.email       = ["madhums8@gmil.com"]
  s.homepage    = "http://rubygems.org/gems/thumbit"
  s.summary     = %q{A simple 'like' plugin/gem for rails}
  s.description = %q{A simple 'like' plugin/gem for rails}

  s.rubyforge_project = "thumbit"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
