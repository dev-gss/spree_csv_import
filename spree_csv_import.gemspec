# frozen_string_literal: true

require_relative "lib/spree_csv_import/version"

Gem::Specification.new do |spec|
  spec.name          = "spree_csv_import"
  spec.version       = SpreeCsvImport::VERSION
  spec.authors       = ["Ammad Fareed"]
  spec.email         = ["ammad.fareed786@gmail.com"]

  spec.summary       = "Sample summary"
  spec.description   = "Sample description"
  spec.homepage      = "https://github.com/ammad-fareed/spree_csv_import"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = spec.homepage

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage  
  spec.metadata["changelog_uri"] = spec.homepage  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
