class Customer

attr_reader :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def get_wallet_value()
    return @wallet
    end


    def wallet_not_empty?()
      return true if @wallet > 0
    else
      return false
    end

    def can_afford_to_buy_drink?(drink)
      return true if @wallet > drink.price
    end

    def spend_money_on_drink(drink)
      @wallet - drink.get_drink_price
    end

    def check_drunkenness()
      return @drunkenness
    end

    def drunkenness_increases(drink)
      return @drunkenness += drink.alcohol_level
    end

    def buy_drink(pub, drink)
      spend_money_on_drink(drink)
      pub.take_money(drink)
      drunkenness_increases(drink)
    end

    def buy_food(pub, food)
      return @drunkenness -= food.rejuvenation_level
    end



















end
