class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price.to_s.gsub(/[$,]/,'').to_i
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average
    if self.price > 500000
      true
    else
      false
    end
  end
end
