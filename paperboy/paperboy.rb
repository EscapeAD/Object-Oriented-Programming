class Paperboy
  attr_accessor :deliver
  attr_reader :quota

  def initialize(name, side)
    @name                   = name
    @experience             = 0
    @earnings               = 0
    @houses_delivered       = 0
    @quota                  = 50
    @side                   = side
    @pay                    = 0.25
    @lost                   = 2.00
    @over                   = 0.50
  end

  def earnings
    total = @houses_delivered - @quota
    if total < 0
      @earnings     = total.abs * @lost
    elsif total > 0
      @earnings     = (@quota * @pay) + (total * @over)
    else
      @earnings     = @quota * @pay
    end
    return @earnings
  end

  def deliver(start_address, end_address)

    total = (end_address - start_address)/2
    unless total % 2 == 0
      total = total.floor + 1
    end

    if @side == "even"
      @houses_delivered = total.floor
    elsif @side == "odd"
      @houses_delivered = total.floor
    else
      @earnings = "Have not choose a side to deliver, even or odd"
    end
    return @earnings
  end

  def report
    puts "I'm #{@name}, I have delievered #{@houses_delivered} houses and I have earned $#{@earnings}"
  end
end

tommy = Paperboy.new("Tommy", "even")

puts tommy.quota # => 50
tommy.deliver(101, 220) # => 17.75
puts tommy.earnings #=> 17.5
puts tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"
