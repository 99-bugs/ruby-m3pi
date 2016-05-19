require 'xbee-ruby'

module M3pi

  class Robot

    def initialize address, serial
      @xbee = XBeeRuby::XBee.new serial: serial
      @address = address = XBeeRuby::Address64.new *address
    end

    def send data
      @xbee.write_request XBeeRuby::TxRequest.new  @address, data
    end

    def drive speed, turn_radius
      raise "Speed is to high, speed must be less than 100" if speed > 100
      raise "Speed is to low, speed must be greater than -100" if speed < -100
      raise "Turn radius is to high, turn_radius must be less than 100" if speed > 100
      raise "Turn radius is to low, turn_radius must be greater than -100" if speed < -100
      send [0x10, [speed].pack("c").getbyte(0), [turn_radius].pack("c").getbyte(0)]
    end

  end

end
