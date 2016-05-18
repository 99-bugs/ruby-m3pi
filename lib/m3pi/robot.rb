require 'xbee-ruby'

module M3pi

  class Robot

    def initialize port = '/dev/ttyUSB0', baud = 9600
      @xbee = XBeeRuby::XBee.new port: port, rate: baud
      @address = address = XBeeRuby::Address64.new 0x00,0x13,0xA2,0x00,0x40,0xB4,0x10,0x5D
      open
    end

    def send data
      @xbee.write_request XBeeRuby::TxRequest.new  @address, data
    end

    def drive speed, turn_radius
      raise "Speed is to high, speed must be less than 100" if speed > 100
      raise "Speed is to low, speed must be greater than -100" if speed < -100
      raise "Turn radius is to high, turn_radius must be less than 100" if speed > 100
      raise "Turn radius is to low, turn_radius must be greater than -100" if speed < -100
      send [0x10, speed, turn_radius]
    end

    def open
      @xbee.open
    end

    def close
      @xbee.close
    end

  end

end
