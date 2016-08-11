class paperboy
  attr_accessor :deliver
  attr_reader :quota :earnings

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

  def earning
    total = @houses_delivered - @quota
    if total < 0
      @earning = total.abs * @lost
    elsif
      @earning = (@quota * @pay) + (total * @over)
    else
      @earning = @quota * @pay
    end
    return @earning
  end

  def deliver(start_address, end_address)
    total = (end_address - start_address)/2
    if @side == "even"
      @houses_delivered = total.floor
    elsif @side == "odd"
      @houses_delivered = total.floor + 1
    else
      @earning = "Have not choose a side to deliver, even or odd"
    end
    return @earning
  end

  def report
    puts "I'm #{name}, I have delievered #{@houses_delivered} houses and I have earned #{earning}"
  end
end
