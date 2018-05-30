require ("minitest/autorun")
require_relative ("../pub.rb")
require_relative ("../drink.rb")

require ("minitest/rg")

class PubTest < MiniTest::Test

  def setup
  @beer = Drink.new("beer", 3)
  @vodka = Drink.new("vodka", 2.5)
  @chanter = Pub.new("Chanter", 50, [@beer, @vodka])

  end


  def test_buy_drink__till_value_increases
    assert_equal(52.5, @chanter.take_money(@vodka) )
  end

  











end
