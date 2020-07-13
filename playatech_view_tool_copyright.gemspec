require_relative 'lib/playatech_view_tool_copyright/version'

Gem::Specification.new do |spec|
  spec.name          = "playatech_view_tool_copyright"
  spec.version       = PlayatechViewToolCopyright::VERSION
  spec.authors       = ["playa.tech"]
  spec.email         = ["playa.tech.in@gmail.com"]

  spec.summary       = %q{View specific methods that are commonly used.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "http://www.github.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
