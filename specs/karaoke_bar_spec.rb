require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestKaraoke_bar < MiniTest::Test

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
    @room1 = Room.new('Green', 3, 'pop', nil)
    @room2 = Room.new('Blue', 6, 'rock', nil)
    @room3 = Room.new('White', 9, 'fado', nil)
  end

  def test_get_karaoke_bar_name
    assert_equal('Sing Your Heart Out', @karaoke_bar1.name)
  end

  def test_get_songs
    assert_equal([0001, 0002, 0003, 0004, 0005], @karaoke_bar1.songs)
  end

  def test_check_guest_into_room(guest, room)
    currently_in_room = room.get_number_of_guests_currently_in_room
    check_guest_into_room(guest, room)
    after_currently_in_room = room.get_number_of_guests_currently_in_room
    assert_equal(after_currently_in_room, currently_in_room + 1)
  end

  # def test_get_highest_song_id__no_songs
  #   assert_equal('No songs yet!', @karaoke_bar1.get_highest_song_id())
  # end

  # def test_get_highest_song_id__some_songs
  #   assert_equal(0005, @karaoke_bar1.get_highest_song_id())
  # end

  # def test_add_song_id_to_songs_array(new_song_id)
  #   assert_equal(@karaoke_bar1.get_highest_song_id + 1, new_song_id)
  # end

end
