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












end
