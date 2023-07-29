require_relative "lib/uistiti/version"

Gem::Specification.new do |spec|
  spec.name        = "uistiti"
  spec.version     = Uistiti::VERSION
  spec.authors     = ["Tom Ecrepont"]
  spec.email       = ["tomecrepont@gmail.com"]
  spec.homepage    = "https://github.com/rails-hackathon/team-173"
  spec.summary     = "Ready to use ViewComponent libray"
  spec.description = "Ui responsive primitives with javascript and css included for increased productivity"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rails-hackathon/team-173"
  spec.metadata["changelog_uri"] = "https://github.com/rails-hackathon/team-173"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.6"
end
