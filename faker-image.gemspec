# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

Gem::Specification.new do |s|
  s.name        = "faker-image"
  s.version     = "2.0.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Benjamin Curtis"]
  s.email       = ["benjamin.curtis@gmail.com"]
  s.homepage    = "https://github.com/ruby-faker/image"
  s.summary     = "Generate fake data for image placeholders"
  s.description = "This an extension to the Faker gem that generates randomized placeholder image URLs."
  s.license     = "MIT"

  s.add_dependency("faker-core", ">= 2")

  s.add_runtime_dependency("i18n", ">= 1")

  s.add_development_dependency("minitest")
  s.add_development_dependency("rake")
  s.add_development_dependency("standard")
  s.add_development_dependency("simplecov")
  s.add_development_dependency("test-unit")

  s.required_ruby_version = ">= 2.3"

  s.files         = Dir["lib/**/*"] + %w[CHANGELOG.md README.md LICENSE]
  s.require_paths = ["lib"]

  s.metadata["changelog_uri"] = "https://github.com/ruby-faker/image/blob/master/CHANGELOG.md"
  s.metadata["source_code_uri"] = "https://github.com/ruby-faker/image"
  s.metadata["bug_tracker_uri"] = "https://github.com/ruby-faker/image/issues"
end
