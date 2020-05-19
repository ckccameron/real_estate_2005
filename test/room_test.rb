require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test
  def test_it_exists
    room = Room.new(:bedroom, 10, '13')

    assert_instance_of Room, room
  end

  def test_it_has_a_category
    room = Room.new(:bedroom, 10, '13')

    assert_equal :bedroom, room.category
  end

  def test_it_can_get_area
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 15, '12')

    assert_equal 130, room_1.area
    assert_equal 180, room_2.area
  end

  def test_room_can_be_painted
    room = Room.new(:bedroom, 10, '13')

    assert_equal false, room.is_painted?

    room.paint

    assert_equal true, room.is_painted?
  end
end
