# PristineText

This gem uses unicode_utils to lowercase text, removes non-letters, strips and squeezes whitespace, then optionally stemwords (from stemming-tools) to stem every word.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pristine_text'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pristine_text

## Usage

require "pristine_text"

puts PristineText.clean("haberler geliyorlar gidiyorlar", :tr)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pristine_text/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
