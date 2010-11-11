require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the acts_as_likeable plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the acts_as_likeable plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ActsAsLikeable'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

PKG_FILES = FileList[
  '[a-zA-Z]*',
  'lib/**/*',
  'rails/**/*',
  'test/**/*'
]

spec = Gem::Specification.new do |s|
  s.name = "thumbit"
  s.version = "0.0.1"
  s.author = "Madhusudhan Srinivasa"
  s.email = "madhums8@gmail.com"
  s.homepage = "http://github.com/madhums/thumbit/"
  s.platform = Gem::Platform::RUBY
  s.summary = "A like plugin/gem for rails"
  s.files = PKG_FILES.to_a
  s.require_path = "lib"
  s.has_rdoc = false
  s.extra_rdoc_files = ["README"]
end

desc 'Turn this plugin into a gem.'
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end