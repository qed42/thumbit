
spec = Gem::Specification.new do |s|
  s.name = "thumbit"
  s.version = "0.0.1"
  s.author = "Madhusudhan Srinivasa"
  s.email = "madhums8@gmail.com"
  s.homepage = "http://github.com/madhums/thumbit/"
  s.platform = Gem::Platform::RUBY
  s.summary = "A like plugin/gem for rails"
  s.require_path = "lib"
  s.has_rdoc = false
  s.extra_rdoc_files = ["README"]
  s.description = "A like plugin/gem for rails"
  
  s.files             = %w( README Rakefile MIT-LICENSE THUMBIT_VERSION )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("rails/**/*")
  s.files            += Dir.glob("test/**/*")
end

