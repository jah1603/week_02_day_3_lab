class Customer

attr_reader :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
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














end
