require ("minitest/autorun")
require_relative ("../food.rb")
require_relative ("../drink.rb")
require_relative ("../pub.rb")
require_relative ("../customer.rb")
require ("minitest/rg")

class FoodTest < MiniTest::Test

  def setup
    @crisps = Food.new("Ready salted", 1, 2)
    @kebab = Food.new("Donner kebab", 2.75, 5)
  end



end
