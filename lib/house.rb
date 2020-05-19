class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price #to convert price to integer: could also
    # do @price = price[1..-1].to_i
    @address = address
    @rooms = []
  end

  def price
    @price.to_s.gsub(/[$]/,'').to_i
    # could also do: look above at attr_reader
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

  def rooms_from_category(category)
    @rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    house_area = 0
    @rooms.each do |room|
      house_area += room.area
    end
    house_area
  end

  def details
    details = {}
    details["price"] = price
    details["address"] = address
    details
  end
end
