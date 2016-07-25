Notes About This App
=======================================

Setup
---------------------------------------
### Update the gemfile
Use the current gemfile example
```ruby
source 'https://rubygems.org'

gem 'rails',        '5.0.0'
gem 'puma',         '3.4.0'
gem 'sass-rails',   '5.0.5'
gem 'uglifier',     '3.0.0'
gem 'coffee-rails', '4.2.1'
gem 'jquery-rails', '4.1.1'
gem 'turbolinks',   '5.0.0'
gem 'jbuilder',     '2.4.1'

group :development, :test do
  gem 'sqlite3', '1.3.11'
  gem 'byebug',  '9.0.0', platform: :mri
end

group :development do
  gem 'web-console',           '3.1.1'
  gem 'listen',                '3.0.8'
  gem 'spring',                '1.7.1'
  gem 'spring-watcher-listen', '2.0.0'
end

group :production do
  gem 'pg', '0.18.4'
end
```
### Install the local gems
`bundle install --without production`

### Hello, World!
Change the default page to a hello, world.

#### Add a hello action to the **Application** controller
`app/contollers/application_controller.rb`
```ruby
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello                       # add this method
    render html: "hello, world!"
  end
end
```
#### Set the route.
`confiq/routes.rb`
```ruby
Rails.applicaton.routes.draw do
  root 'application#hello'  #point the app's root page to the hello function from application_controller
end
```

### First Deploy
This was deployed on github and heroku.



