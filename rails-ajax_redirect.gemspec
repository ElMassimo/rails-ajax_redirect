lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rails/ajax_redirect/version'

Gem::Specification.new do |s|
  s.name = 'rails-ajax_redirect'
  s.version = Rails::AjaxRedirect::VERSION
  s.licenses = ['MIT']
  s.summary = 'Simple redirect_to support for ajax requests in Rails.'
  s.description = 'Simple redirect_to support for ajax requests in Rails, for non-Turbolinks applications.'
  s.authors = ['Máximo Mussini']

  s.email = ['maximomussini@gmail.com']
  s.extra_rdoc_files = ['README.md']
  s.files = Dir.glob("{lib}/**/*.rb") + %w(README.md)
  s.homepage = %q{https://github.com/ElMassimo/rails-ajax_redirect}

  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9.3'
  s.require_paths = ['lib']

  s.add_dependency 'railties'
  s.add_dependency 'jquery-rails'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
end
