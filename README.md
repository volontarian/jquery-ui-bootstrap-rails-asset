# jquery-ui-bootstrap-rails-asset

Soon I will send a pull request to https://github.com/jaimie-van-santen/jquery-ui-bootstrap-rails and maybe can quit the work on this gem.

The implementation of this gem is heavily inspired from https://github.com/joliss/jquery-ui-rails

[![Build Status](https://secure.travis-ci.org/applicat/jquery-ui-bootstrap-rails-asset.png?branch=master)](http://travis-ci.org/applicat/jquery-ui-bootstrap-rails-asset) [![Dependency Status](https://gemnasium.com/applicat/jquery-ui-bootstrap-rails-asset.png)](https://gemnasium.com/applicat/jquery-ui-bootstrap-rails-asset)

This gem packages the jQuery UI Bootstrap 1.10.2 assets (JavaScripts, stylesheets, and
images) for the Rails 3.1+ [asset
pipeline](http://guides.rubyonrails.org/asset_pipeline.html), so you never have
to download a custom package through the [web
interface](http://jqueryui.com/download) again.

Also check out the
[jquery-ui-sass-rails](https://github.com/jhilden/jquery-ui-sass-rails) gem,
which allows you to override theme variables with Sass.

## Usage

In your Gemfile, add:

```ruby
gem 'jquery-ui-bootstrap-rails-asset'
```

## Require Everything

To require all jQuery UI modules, add the following to your application.js:

```javascript
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery-ui-bootstrap
```

Also add the jQuery UI CSS to your application.css:

```css
/*
 *= require twitter/bootstrap
 *= require twitter/bootstrap/responsive
 *= require jquery-ui-bootstrap
 */
```

All images required by jQuery UI are automatically served through the asset
pipeline, so you are good to go! For example, this code will add a
[datepicker](http://jqueryui.com/demos/datepicker/):

```javascript
$(function() {
  $('.datepicker').datepicker();
});
```

## Contributing

### Setup

The `jquery-ui-bootstrap-rails-asset` gem should work in Ruby 1.8.7 apps. To run the rake
tasks, you need Ruby 1.9 however.

```bash
git clone git://github.com/applicat/jquery-ui-bootstrap-rails-asset.git
cd jquery-ui-bootstrap-rails-asset
git submodule update --init
bundle install
bundle exec rake # rebuild assets
```

Most of the code lives in the `Rakefile`. Pull requests are more than welcome!

### Hacking jQuery UI

The jquery-ui-bootstrap-rails-asset repository is
[contributor-friendly](http://www.solitr.com/blog/2012/04/contributor-friendly-gems/)
and has a git submodule containing the official [jquery-ui-bootstrap](https://github.com/addyosmani/jquery-ui-bootstrap). This way it's easy to hack the
jQuery UI Bootstrap code:

```bash
cd jquery-ui-bootstrap
git checkout master
... hack-hack-hack ...
bundle exec rake  # rebuild assets based on your changes
```

Assuming your app's Gemfile points at your jquery-ui-bootstrap-rails-asset checkout (`gem
'jquery-ui-bootstrap-rails-asset', :path => '~/path/to/jquery-ui-bootstrap-rails-asset'`), all you need to do
now is refresh your browser, and your changes to jQuery UI are live in your
Rails application.

### Testing

As a smoke test, a `dummy` application is available in the repository under the spec directory, which
displays a check mark and a datepicker to make sure the assets load correctly:

```bash
cd spec/dummy
bundle
rails s
```

Now point your browser at [http://localhost:3000/](http://localhost:3000/).
