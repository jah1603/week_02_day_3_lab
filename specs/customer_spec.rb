require ("minitest/autorun")
require_relative ("../customer.rb")
require_relative ("../pub.rb")
require_relative ("../drink.rb")
require ("minitest/rg")

class CustomerTest < MiniTest::Test

  def setup
    @chanter = Pub.new("Chanter", 50, [@beer, @vodka])
    @vodka = Drink.new("vodka", 2.5)
    @beer = Drink.new("beer", 3)
    @lee = Customer.new("Lee", 15, 60)
    @james = Customer.new("James", 20, 17)
  end


  def test_get_wallet_value
    result = @lee.get_wallet_value
    assert_equal(15, result)
  end

  def test_wallet_not_empty
    result = @lee.wallet_not_empty?
    assert_equal(true, result)
  end


  def test_can_afford_to_buy_drink
    assert_equal(true, @james.can_afford_to_buy_drink?(@vodka))
  end

  def test_buy_drink__wallet_value_decreases
    assert_equal(17.5, @james.spend_money_on_drink(@vodka))
  end

  def test_drink_sale
    @lee.buy_drink(@chanter, @beer)
      assert_equal(12, @lee.spend_money_on_drink(@beer))
      assert_equal(53, @chanter.take_money(@beer))
  end














end
