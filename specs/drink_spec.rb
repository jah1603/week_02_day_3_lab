require ("minitest/autorun")
require_relative ("../drink.rb")
require_relative ("../pub.rb")
require ("minitest/rg")

class DrinkTest < MiniTest::Test

  def setup
    @vodka = Drink.new("vodka", 2.5)
    @beer = Drink.new("beer", 3)
  end


  def test_get_drink_price
    assert_equal(2.5, @vodka.get_drink_price)
  end













end
