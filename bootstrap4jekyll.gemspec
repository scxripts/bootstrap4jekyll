# frozen_string_literal: true

require_relative 'lib/bootstrap4jekyll/version'

Gem::Specification.new do |gem_spec|
  gem_spec.name = 'bootstrap4jekyll'
  gem_spec.version = Bootstrap4jekyll::VERSION
  gem_spec.authors = ['Harald Postner']
  gem_spec.email = ['Harald-lb@free-creations.de']

  gem_spec.summary = 'A Jekyll plugin that adds the Twitter Bootstrap framework to your site.'
  gem_spec.description = 'This is a partial re-write of the `jekyll-bootstrap-sass` plugin.'
  gem_spec.homepage = 'https://github.com/free-creations/bootstrap4jekyll'

  gem_spec.metadata = {
    'homepage_uri' => 'https://github.com/free-creations/bootstrap4jekyll',
    'changelog_uri' => 'https://github.com/free-creations/bootstrap4jekyll/blob/master/History.md',
    'source_code_uri' => 'https://github.com/free-creations/bootstrap4jekyll',
    'bug_tracker_uri' => 'https://github.com/free-creations/bootstrap4jekyll/issues'
  }

  gem_spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  gem_spec.metadata['homepage_uri'] = gem_spec.homepage
  gem_spec.metadata['source_code_uri'] = gem_spec.homepage
  gem_spec.metadata['changelog_uri'] = gem_spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gem_spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  gem_spec.bindir = 'exe'
  gem_spec.executables = gem_spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem_spec.require_paths = ['lib']

  gem_spec.add_dependency 'bootstrap', '>= 4.2'
  gem_spec.add_dependency 'jekyll', '>= 4.0'

  gem_spec.add_development_dependency 'bundler'
  gem_spec.add_development_dependency 'rake', '~> 12.0'
  gem_spec.add_development_dependency 'rspec', '~> 3.9'
  gem_spec.add_development_dependency 'rubocop', '~> 0.85'
  gem_spec.add_development_dependency 'rubocop-rspec', '~> 1.39.0'
  gem_spec.add_development_dependency 'simplecov', '~> 0.18.5'
  gem_spec.add_development_dependency 'yard'
end
