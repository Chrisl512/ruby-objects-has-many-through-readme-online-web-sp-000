class Customer

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def new_meal(waiter, total, tip)
    Meal.new()

  end

  def self.all
    @@all
  end



end
