class paperboy

  attr_reader :quota

  def initialize(name, side)
    @name                   = name
    @experience             = 0
    @earnings               = 0
    @houses_delivered       = 0
    @quota                  = 50
    @over_quota             = 0
    @side                   = side
    @pay                    = 0.25
    @lost                   = 2.00
    @over                   = 0.50
  end

  def deliver(start_address, end_address)
    if @side == "even"
      @earning = end_address - start_address
    elsif @side == "odd"
      @earning = (end_address - start_address)

    else
      @earning = "Have not choose a side to deliver, even or odd"
    end
    return @earning
  end

  def report

  end
end
