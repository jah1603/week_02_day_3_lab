require ("minitest/autorun")
require_relative ("../customer.rb")
require ("minitest/rg")

class CustomerTest < MiniTest::Test

  def setup
    @lee = Customer.new("Lee", 15)
    @james = Customer.new("Janes", 20)
  end


  def test_get_wallet_value
    result = @lee.get_wallet_value
    assert_equal(15, result)
  end
  #
  # def test_wallet_not_empty
  #   assert_greater_than(0, @wallet)
  #
  # end
  #
  #










end
