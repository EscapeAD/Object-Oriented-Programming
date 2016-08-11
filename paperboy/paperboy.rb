class Paperboy
  attr_accessor :deliver
  attr_reader :quota

  def initialize(name, side)
    @name                   = name
    @experience             = 0
    @earnings               = 0
    @houses_delivered       = 0
    @que                    = 50
    @side                   = side
    @pay                    = 0.25
    @lost                   = 2.00
    @over                   = 0.50
  end

  def quota
    return (@que + (@experience/2))
  end

  def earnings
    return @earnings
  end
  def update_earnings
    total           = @houses_delivered - quota
    if    total < 0
      @earnings     += (@houses_delivered * @pay) - (@lost)
    elsif total > 0
      @earnings     += (quota * @pay) + (total.abs * @over)
    else
      @earnings     += quota * @pay
    end

    return @earnings
  end

  def deliver(start_address, end_address)

    total = (end_address - start_address)/2.0
    unless total % 1 == 0
      total = total.floor + 1
    end

    if @side == "even"
      @houses_delivered = total.floor
    elsif @side == "odd"
      @houses_delivered = total.floor
    else
       return "Have not choose a side to deliver, even or odd"
    end
    update_earnings
    @experience += (@houses_delivered)
    return @houses_delivered
  end

  def report
    puts "I'm #{@name}, I have delievered #{@houses_delivered} houses and I have earned $#{@earnings}"
  end
end

tommy = Paperboy.new("Tommy", "even")


puts tommy.quota # => 50
puts tommy.deliver(101, 220) # => 17.75
puts tommy.earnings #=> 17.5
tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"


puts tommy.quota # => 80
tommy.deliver(1, 150) # => 18.75
puts tommy.earnings #=> 36.25
tommy.report # => "I'm Tommy, I've been delivered 134 papers and I've earned $36.25 so far!"
