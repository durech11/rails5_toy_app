# Notes About This App

## Setup
Here are the setup instructions for this app.  

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

### Scaffold User
Pass the `scaffold` command to the `rails generate` script.  
The argument of the `scaffold` command is the *singular* version of the resource name (in this case, **User**)  
`rails generate scaffold User name:string email:string`

### Migrate the database
`rails db:migrate`

### Scaffold User
Pass the `scaffold` command to the `rails generate` script.  
The argument of the `scaffold` command is the *singular* version of the resource name (in this case, **User**)  
`rails generate scaffold User name:string email:string`

### Migrate the database
**NOTE:** In rails 5, the `db:migrate` is now used with the `rails` command. Prior the rails 5, the `rake` command is used.  
`rails db:migrate`

### A user tour
Run the server: `rails s`
The scaffolding produced multiple pages that are not yet linked to the root page of the application. In order to see the generated pages, the corresponding links/urls can be visited:

| URL           | Action   | Purpose                          |
|---------------|----------|----------------------------------|
| /users        | *index*  | page to list all users           |
| /users/1      | *show*   | page to show user with id **1**  |
| /users/new    | *new*    | page to make a new user          |
| /users/1/edit | *edit*   | page to edit user with ide **1** |


