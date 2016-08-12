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
      puts "Rover moved current [#{@xs}, #{@ys}] of #{@direction}"
    end
      puts "Rover end location is [#{@xs}, #{@ys}] and facing #{@direction}"

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
      puts "error"
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
      else
        puts "error"
      end
    when "R"
      case @direction
      when "N" then @direction = "E"
      when "E" then @direction = "S"
      when "S" then @direction = "W"
      when "W" then @direction = "N"
      else
        puts "error"
      end
    end
  end
end
bat_mobile = Rover.new(0,0,"N")
bat_mobile.read_instruction
