class Pub

  def initialize(name, till, stock)
    @name = name
    @till = till
    @stock = stock
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
  else return true
  end

  def check_stock_level(drink)
    @stock[drink]
  end

  def check_total_stock_value()
    stock_array = for drink in @stock
      return @stock[drink]
    end
    stock_array_two = for number in stock_array
      number * price
    end
    stock_value = stock_array_two[1] + stock_array_two[2]
  end

end
