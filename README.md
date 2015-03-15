# JsonLoggerFormatter

Logs as json. Pretty straightforward, see tests for actual format of output.

This is great if you plan to parse logs programatically.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'json_logger_formatter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install json_logger_formatter

## Usage

```ruby
l = Logger.new('path/to/log.file') # any valid log target
l.formatter = JsonLoggerFormatter::Formatter
l.info {whatever: 'you want to put here'}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/json_logger_formatter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
