require_relative 'lib/github_actions_billing_visualization/version'

Gem::Specification.new do |spec|
  spec.name          = 'github_actions_billing_visualization'
  spec.version       = GithubActionsBillingVisualization::VERSION
  spec.authors       = ['M.Yamashita']
  spec.email         = ['4653960+M-Yamashita01@users.noreply.github.com']

  spec.summary       = %q{github actions billing visualization}
  spec.description   = %q{github actions billing visualization}
  spec.homepage      = 'https://github.com/M-Yamashita01/GitHubActionsBillingVisualization'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "https://github.com/M-Yamashita01/GitHubActionsBillingVisualization"
  spec.metadata['changelog_uri'] = "https://github.com/M-Yamashita01/GitHubActionsBillingVisualization"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
