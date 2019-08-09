require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../karaoke_bar')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new('John', 'Green')
    @song1 = Song.new(0001, 'Material Girl', 'Madonna', 'pop')
    @karaoke_bar1 = Karaoke_bar.new('Sing Your Heart Out')
    @room1 = Room.new('Green')
  end

  def test_get_room_name
    assert_equal('Green', @room1.name)
  end

  # def test_customer_starts_with_no_books
  #   assert_equal([], @customer1.books)
  # end
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
