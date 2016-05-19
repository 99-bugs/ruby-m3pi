$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'm3pi'
require 'io/console'




serial = SerialPort.new '/dev/ttyUSB1', 9600

robot = M3pi::Robot.new [0x00,0x13,0xA2,0x00,0x40,0xB4,0x10,0x5D], serial


puts "Press x to quit"

while key = STDIN.getch
  case key
  when 'z' #forward
    robot.drive 100, 0
  when 'q' #left
    robot.drive 0, -100
  when 's' #back
    robot.drive -100, 0
  when 'd' #right
    robot.drive 0, 100
  when 'x' # quit
    break
  end
end
