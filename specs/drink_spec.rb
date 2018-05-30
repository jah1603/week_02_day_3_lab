require ("minitest/autorun")
require_relative ("../drink.rb")
require ("minitest/rg")

class DrinkTest < MiniTest::Test

  def setup
    @vodka = Drink.new("vodka", 2.5)
    @beer = Drink.new("beer", 3)
  end
  












end
