require ("minitest/autorun")
require_relative ("../pub.rb")
require ("minitest/rg")

class PubTest < MiniTest::Test

  def setup
  @beer = Drink.new("beer", 3)
  @vodka = Drink.new("vodka", 2.5)
  @chanter = Pub.new("Chanter", 50, [@beer, @vodka])

  end












end
