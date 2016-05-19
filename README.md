# Ruby::M3pi

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ruby/m3pi`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby-m3pi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-m3pi

## Usage

```ruby
require 'm3pi'

# create Serialport object for communication with the xbee coordinator
serial = SerialPort.new '/dev/ttyUSB1', 9600
serial.open

# create an new Robot instance, providing his MAC address
robot = M3pi::Robot.new [0x00,0x13,0xA2,0x00,0x40,0xB4,0x10,0x5D], serial

# control the robot (note: the commands must be repeated to keep the robot driving)

# go forward
robot.forward

# drive backwards
robot.reverse

# turn left
robot.left

# turn right
robot.right
```

## Mbed Racing Robots firmware

https://developer.mbed.org/users/sillevl/code/RacingRobots_remotecontrol/

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ruby-m3pi.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
