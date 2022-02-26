# frozen_string_literal: true

require_relative "lib/k_ota_schema_registry/version"

Gem::Specification.new do |spec|
  spec.name          = "k_ota_schema_registry"
  spec.version       = KOtaSchemaRegistry::VERSION
  spec.authors       = ["Koji Ota"]
  spec.email         = ["afterjnih@gmail.com"]

  spec.summary       = "sample protobuf gem"
  spec.description   = "sample protobuf gem"
  spec.homepage      = 'https://github.com/k-o-ta/k_ota_schema_registry/tree/main/ruby'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/k-o-ta/k_ota_schema_registry/tree/main/ruby'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "zeitwerk"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
