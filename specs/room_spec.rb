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
    @room1 = Room.new('Green', 3, 'pop', [])
    @room2 = Room.new('Blue', 6, 'rock', [])
    @room3 = Room.new('White', 9, 'fado', [])
  end

  def test_get_room_name
    assert_equal('Green', @room1.name)
  end

  # def test_room_starts_with_no_guests
  #   assert_nil(@room1.guests, msg = nil)
  # end

  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest2)
    assert_equal(1, @room1.guests.count)
  end

  # def test_remove_guest_from_room
  #   @room1.remove_guest_from_room(@guest2)
  #   assert_equal(0, @room1.guests.count)
  # end



  def test_get_number_of_guests_currently_in_room
    @room1.add_guest_to_room(@guest2)
    number_of_guests_currently_in_room = @room1.get_number_of_guests_currently_in_room
    # p number_of_guests_currently_in_room
    assert_equal(1, number_of_guests_currently_in_room)
  end
  #
  # def test_library_can_add_book
  #   @library.add_book(@book1)
  #   @library.add_book(@book2)
  #   assert_equal(2, @library.books_in_stock.count)
  # end
  #
  # def test_try_to_borrow_book__successful
  #   @customer1.try_to_borrow_book(@book1, @library)
  #   assert_equal(1, @customer1.books.count)
  # end

end
