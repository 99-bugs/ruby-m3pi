$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'm3pi'
require 'io/console'


robot = M3pi::Robot.new '/dev/ttyUSB1'

# 20.times do
#   robot.drive 100, 0
#   sleep 0.075
# end


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
