require('minitest/autorun')
require('pry')

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')


class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new('Chris')
    @guest2 = Guest.new('Stephen')
    @guest3 = Guest.new('Steph')
    @guest4 = Guest.new('Roman')
    @guest5 = Guest.new('Holly')
    @guests = [@guest1, @guest2]
    @guests2 = [@guest1, @guest2, @guest3, @guest4, @guest5]
    @room1 = Room.new(@guests)
    @room2 = Room.new(@guests2)
  end


  def test_is_room()
    assert_equal(@room1.class, Room.new(@guests).class)
  end

  def test_add_guest
    new_guest = Guest.new("John")
    @room1.add_guest(new_guest)
    assert_equal(true, @room1.guests.include?(new_guest))

  end

  def test_remove_guest
    guest_count = @room1.guests.count
    @room1.remove_guest
    assert_equal(guest_count - 1, @room1.guests.count)
  end

  def test_add_song
    dance = Song.new("Dance", "Fallout")
    @room1.add_song(dance)
    assert_equal(dance, @room1.songs[dance.name])
  end

  def test_too_many_guests
    assert_equal(true, @room2.too_many_guests)
  end



end