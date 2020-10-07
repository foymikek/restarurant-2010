class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_of_business)
    "#{(opening_time.to_i + hours_of_business)}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time.to_i <= 12
      true
    elsif @opening_time.to_i > 12
      false
    end
    # require "pry"; binding.pry
  end
end
