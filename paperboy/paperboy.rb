class Paperboy
  attr_accessor :deliver
  attr_reader :quota

  def initialize(name, side, quota)
    @name                   = name
    @experience             = 0
    @earnings               = 0
    @houses_delivered       = 0
    @quota                  = quota
    @side                   = side
    @pay                    = 0.25
    @lost                   = 2.00
    @over                   = 0.50
  end

  def earnings
    total = @houses_delivered - @quota
    if total < 0
      @earnings     = (@houses_delivered * @pay) - (total.abs * @lost)
    elsif total > 0
      @earnings     = (@quota * @pay) + (total * @over)
    else
      @earnings     = @quota * @pay
    end
    return @earnings
  end

  def deliver(start_address, end_address)

    total = (end_address.abs - start_address.abs)/2
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

tommy = Paperboy.new("Tommy", "even", 50)
boy = Paperboy.new("Tommy", "even", 50)


puts tommy.quota # => 50
tommy.deliver(101, 220) # => 17.75
puts tommy.earnings #=> 17.5
tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"


puts boy.quota # => 80
boy.deliver(1, 150) # => 18.75
puts boy.earnings #=> 36.25
boy.report # => "I'm Tommy, I've been delivered 134 papers and I've earned $36.25 so far!"
