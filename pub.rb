class Pub

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end


  def take_money(drink)
    return @till + drink.get_drink_price
  end

  def is_old_enough?(customer)
    return true if customer.age >= 18
  else return false
  end

  def should_serve?(person)
    return false if person.check_drunkenness > 12
  else true
  end










end
