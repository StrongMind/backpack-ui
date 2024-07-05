require_relative "lib/backpack_ui/version"

Gem::Specification.new do |spec|
  spec.name = "backpack_ui"
  spec.version = BackpackUi::VERSION
  spec.authors = ["Skunkworks"]
  spec.email = ["skunkworks@strongmind.com"]

  spec.summary = "UI components for StrongMind applications."
  spec.description = "UI components for StrongMind applications."
  spec.homepage = "https://github.com/strongmind/backpack-ui"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/StrongMind/backpack-ui"
  spec.metadata["changelog_uri"] = "https://github.com/StrongMind/backpack-ui/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.4"
end
