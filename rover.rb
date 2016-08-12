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
    user_moves.each do |mover|
    case mover
      when "L" then self.turn("L")
      when "R" then self.turn("R")
      when "M" then self.move
    end
      puts "current [#{@xs}, #{@ys}] of #{@direction}"
    end
    puts "end location is [#{@xs}, #{@ys}] and facing #{@direction}"

  end

  def move
    if @direction == "N"
       @ys += 1
    elsif @direction == "E"
       @xs += 1
    elsif @direction == "S"
       @ys += -1
    elsif @direction == "W"
       @xs += -1
    else
      # input_error
      puts "WTF"
    end
  end


  def turn(spin)
    case spin
    when "L"
      case @direction
      when "N" then @direction = "W"
      when "E" then @direction = "N"
      when "S" then @direction = "E"
      when "W" then @direction = "S"
      end
    when "R"
      case @direction
      when "N" then @direction = "E"
      when "E" then @direction = "S"
      when "S" then @direction = "W"
      when "W" then @direction = "N"
      end
    end
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
