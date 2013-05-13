$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require File.expand_path('../lib/jquery/ui/bootstrap/rails/asset/version', __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'jquery-ui-bootstrap-rails-asset'
  s.version     = Jquery::Ui::Bootstrap::Rails::Asset::VERSION
  s.authors     = ['Mathias Gawlista']
  s.email       = ['gawlista@gmail.com']
  s.homepage    = 'https://github.com/Applicat/jquery-ui-bootstrap-rails-asset'
  s.summary     = 'jQuery UI Bootstrap for the Rails 3.1+ asset pipeline'
  s.description = 'jQuery UI Bootstrap for the Rails 3.1+ asset pipeline'

  s.required_rubygems_version = '>= 1.3.6'

  s.add_dependency 'railties', '>= 3.1.0'
  s.add_dependency 'bootstrap-sass-rails'
  
  s.add_development_dependency 'json', '~> 1.7'
  
  s.files        = `git ls-files`.split('\n').reject { |f| f =~ /^dummy|^jquery-ui-bootstrap/ }
  s.executables  = `git ls-files -- bin/*`.split('\n').map { |f| File.basename(f) }
  s.require_path = 'lib'
end
