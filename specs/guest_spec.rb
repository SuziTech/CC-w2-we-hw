require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../karaoke_bar')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestGuest < MiniTest::Test

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

  def test_get_guest_name
    assert_equal('John', @guest1.name)
  end

end
