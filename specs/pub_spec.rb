require ("minitest/autorun")
require_relative ("../pub.rb")
require_relative ("../drink.rb")
require_relative ("../customer.rb")
require_relative ("../food.rb")

require ("minitest/rg")

class PubTest < MiniTest::Test

  def setup
  @beer = Drink.new("beer", 3, 1.5)
  @vodka = Drink.new("vodka", 2.5, 3)
  @chanter = Pub.new("Chanter", 50, {@beer => 10, @vodka => 25})
  @lee = Customer.new("Lee", 15, 60, 10)
  @james = Customer.new("James", 20, 17, 6)
  @crisps = Food.new("Ready salted", 1, 2)
  @kebab = Food.new("Donner kebab", 2.75, 5)
  end


  def test_buy_drink__till_value_increases
    assert_equal(52.5, @chanter.take_money(@vodka) )
  end

  def test_should_serve__age?
    assert_equal(true, @chanter.is_old_enough?(@lee))
  end

  def test_should_serve__sober?
    @lee.buy_drink(@chanter, @beer)
    assert_equal(true, @chanter.should_serve?(@lee))
  end

  def test_should_serve__drunk?
    @lee.buy_drink(@chanter, @vodka)
    assert_equal(false, @chanter.should_serve?(@lee))
  end

  def test_check_stock_level
    assert_equal(25, @chanter.check_stock_level(@vodka))
  end

  def test_check_total_stock_value
    assert_equal(92.5, check_total_stock_value())
  end




end
