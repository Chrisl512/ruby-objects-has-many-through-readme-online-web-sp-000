class Waiter

  attr_accessor :name, :yrs_experience

  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.self == waiter
  end

  def self.all
    @@all
  end

end
