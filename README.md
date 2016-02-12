# Devise Suspicious Activity

A security extension for Devise that notifies users' old email address when their email has been changed.

It is composed of an additional Devise module:

* `:suspiciousable` - Notify old email address when an email is changed.

## Getting started

Devise Security Extension works with Devise on Rails 4.0 onwards. You can add it to your Gemfile after you successfully set up Devise (see [Devise documentation](https://github.com/plataformatec/devise)) with:

```ruby
gem 'devise-suspicious-activity'
```

Run the bundle command to install it.

Add the `:suspiciousable` module to your devise model:
```ruby
class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
   :recoverable, :rememberable, :trackable, :validatable, :suspiciousable
end
```

After you installed Devise Suspicious Activity if you want to edit the email template you can run the generator:

```ruby
rails generate suspiciousable
```

## Contributors

* Simon Knight (https://github.com/SimonDKnight)
* Alex Malik (https://github.com/alexmalik)
* Joe Dickinson (https://github.com/Joe-Dickinson)
* Dan Garland (https://github.com/dmgarland)

## Contributing to devise-suspicious-activity
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2016 Dan Garland. See LICENSE.txt for
further details.

