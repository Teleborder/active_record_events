# ActiveRecordEvents

Listen to `create`, `update`, and `destroy` events for your ActiveRecord models.

## Installation

Add this line to your application's Gemfile:

    gem 'active_record_events'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_record_events

## Usage

include in ActiveRecord model

```ruby
class User < ActiveRecord::Base
  include ActiveRecordEvents

  # your model logic
end
```

set up a listener on the Class

```ruby
User.instance_on :create do
  puts self.name # writes the user's name property to stdout
end
```

or on the model itself

```ruby
user = User.new
user.on :create do
  puts self.name # writes the user's name property to stdout
end
```

and trigger the hook

```ruby
user.save!
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/active_record_events/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
