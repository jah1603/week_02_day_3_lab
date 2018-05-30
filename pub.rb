class Pub

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end


  def take_money(drink)
    return @till + drink.get_drink_price
  end












end
