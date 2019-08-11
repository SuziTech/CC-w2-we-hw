require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../karaoke_bar')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new('John', 'Mustang Sally', nil)
    @guest2 = Guest.new('Rita', 'Material Girl', nil)
    @guest3 = Guest.new('Bill', 'Wish You Were Here', nil)
    @guest4 = Guest.new('Jane', 'Lines on my Face', nil)
    @song1 = Song.new(0001, 'Material Girl', 'Madonna', 'pop')
    @song2 = Song.new(0002, 'O gente da minha terra', 'Mariza', 'fado')
    @song3 = Song.new(0003, 'Lines on my Face', 'Peter Frampton', 'rock')
    @song4 = Song.new(0004, 'Wish You Were Here', 'Pink Floyd', 'rock')
    @song5 = Song.new(0005, 'Karma Kameleon', 'Culture Club', 'pop')
    @karaoke_bar1 = Karaoke_bar.new('Sing Your Heart Out')
    @room1 = Room.new('Green', 3, [], [])
    @room2 = Room.new('Blue', 6, [], [])
    @room3 = Room.new('White', 9, [], [])
  end

  def test_get_room_name
    assert_equal('Green', @room1.name)
  end

  # def test_room_starts_with_no_guests
  #   assert_nil(@room1.guests, msg = nil)
  # end

  def test_add_guest_to_room__ok
    @room1.add_guest_to_room(@guest2)
    assert_equal(1, @room1.guests.count)
  end

  # def test_remove_guest_from_room
  #   @room1.remove_guest_from_room(@guest2)
  #   assert_equal(0, @room1.guests.count)
  # en

  def test_get_number_of_guests_currently_in_room
    @room1.add_guest_to_room(@guest2)
    number_of_guests_currently_in_room = @room1.get_number_of_guests_currently_in_room
    # p number_of_guests_currently_in_room
    assert_equal(1, number_of_guests_currently_in_room)
  end

  def test_add_guest_to_room__room_full
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest2)
    assert_equal("Sorry, the room is full!", @room1.add_guest_to_room(@guest3))
  end

  def test_add_song_to_playlist
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song5)
    assert_equal(2, @room1.playlist.length)
  end

end
