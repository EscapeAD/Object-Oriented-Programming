class Cat
  attr_accessor :name :preferred_food :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12 && @meal_time > 0
      eat = @meal_time.to_s + " AM"
    elsif @meal_time > 12 && @meal_time < 24
      time = @meal_time/2
      eat = time.to_s + " PM"
    else
      eat = "Invalid time"
    end
    return eat
  end

  def meow
    puts "My Name is #{name} and I eat #{preferred_food} at #{eats_at}"
  end

end
