# Html2latex

This gem translates html tag into Latex code. You can also create your own translation hash.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'html2latex'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html2latex

## Usage

### Using the  translate method

Example:

```ruby
Html2latex.translate("<b>Bolt text here</b>")
```
### Add a new hash translate in the hash list

Example:

```ruby
newhash = {"<tag>" => "\latexcode{"}
Html2latex.add newhash
 ```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pherde/html2latex. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Html2latex project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/pherde/html2latex/blob/master/CODE_OF_CONDUCT.md).
