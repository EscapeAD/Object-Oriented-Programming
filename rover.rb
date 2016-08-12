class Rover

  def initialize(x_coordinate, y_coordinate, direction)
    @ys = 0
    @xs = 0
    @direction = "N"
    @origin = []

  end

  def read_instruction
    puts "Enter start location"
    user_input  = gets.chomp
    @origin     = user_input.split(" ")
    @xs         = @origin[0].to_i
    @ys         = @origin[1].to_i
    @direction  = @origin[2].to_s.upcase
    puts "starting location is [#{@xs}, #{@ys}] and facing #{@direction}"
    puts "enter directions"
    user_moves  = gets.chomp.upcase.split(//)
    puts user_moves
    puts @origin
    user_moves.each do |move|
      case move
      when move == "M" then Self.move
      when move == "L" then
      when move == "R" then
      end
    end
    puts "end location is [#{@xs}, #{@ys}] and facing #{@direction}"

  end

  def move
    case move
    when @direction == "N" then @ys += 1
    when @direction == "E" then @xs += 1
    when @direction == "S" then @ys += -1
    when @direction == "W" then @xs += -1
    else
      # input_error
    end
  end


  def turn(go)

  end
end

wow = Rover.new(0,0,"N")
wow.read_instruction


















# class Rover
#   def initialize(x_state, y_state, direction)
#     @x_state      = x_state
#     @y_state      = y_state
#     @direction    = direction.upcase
#     @position     = []
#     @command      = 0
#     @state        = 0
#   end
#
#   def position
#     @position = [@x_state, @y_state]
#   end
#   def instructions
#     puts "command"
#     input = gets.chomp
#     position
#     puts "Current Coordinates #{position} and direction of #{@direction}"
#     input_array = input.upcase.scan(/\w/)
#     input_array.each do |x|
#       if x == "M"
#         move("M")
#       elsif x == "L"
#         @command = "L"
#
#       elsif x == "R"
#         @command = "R"
#
#       else
#         puts "invalid input"
#     end

#   end
#
#   def move(map)
#     if @direction == "N"
#       @y_state = @y_state += 1
#       position
#       puts position
#     elsif @direction == "W"
#       @x_state = @x_state += 1
#       position
#       puts position
#     elsif @direction == "E"
#       @x_state = @x_state -= 1
#       position
#       puts position
#     elsif @direction == "S"
#       @y_state = @y_state -= 1
#       position
#       puts position
#     else
#       puts "Invalid direction"
#     end
#     return @position
#   end
#
#   def turn
#     if @command == "L"
#         @state = (0)
#         # face
#     elsif @command == "R"
#         @state = (1)
#         # face
#     else
#       puts "wrong input"
#     end
#   end
#
#   # def face
#   #   if @direction == "N"
#   #     if @state == (1)
#   #       @direction = "E"
#   #     else
#   #       @direction = "W"
#   #     end
#   #   elsif @direction == "W"
#   #     if @state == (1)
#   #       @direction = "N"
#   #     else
#   #       @direction = "S"
#   #     end
#   #   elsif @direction == "E"
#   #     if @state == (1)
#   #       @direction = "S"
#   #     else
#   #       @direction = "N"
#   #     end
#   #   else
#   #       puts 'whats up'
#   #   end
#   #
#   # end
# end
# end
#
# pew = Rover.new(0,0,"N")
# pew.instructions
