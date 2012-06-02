lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "raddocs"
  s.version     = "0.1.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eric Oestrich"]
  s.email       = ["eric@oestrich.org"]
  s.summary     = "Browse documentation generated by the rspec_api_documentation gem"
  s.description = "Browse documentation generated by the rspec_api_documentation gem"
  s.homepage    = "http://github.com/oestrich/raddocs"

  s.required_rubygems_version = ">= 1.3.6"

  # If adding, please consider gemfiles/minimum_dependencies
  s.add_runtime_dependency "sinatra"
  s.add_runtime_dependency "haml"
  s.add_runtime_dependency "json"

  s.add_development_dependency "rspec"
  s.add_development_dependency "rack-test"
  s.add_development_dependency "capybara"
  s.add_development_dependency "rake"

  s.files        = Dir.glob("lib/**/*")
  s.require_path = 'lib'
end
