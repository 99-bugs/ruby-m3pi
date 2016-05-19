$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'm3pi'
require 'io/console'




serial = SerialPort.new '/dev/ttyUSB1', 9600
serial.open

robot = M3pi::Robot.new [0x00,0x13,0xA2,0x00,0x40,0xB4,0x10,0x5D], serial


puts "Press x to quit"

while key = STDIN.getch
  case key
  when 'z' #forward
    robot.forward
  when 'q' #left
    robot.left
  when 's' #back
    robot.reverse
  when 'd' #right
    robot.right
  when 'x' # quit
    break
  end
end
