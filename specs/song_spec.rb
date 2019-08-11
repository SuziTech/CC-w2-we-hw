require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../karaoke_bar')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestSong < MiniTest::Test

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

  def test_get_song_id
    assert_equal(0001, @song1.id)
  end

  def test_get_song_title
    assert_equal('Material Girl', @song1.title)
  end

  def test_get_song_artist
    assert_equal('Pink Floyd', @song4.artist)
  end

  def test_get_song_genre
    assert_equal('fado', @song2.genre)
  end

  # def test_create_song
  #   assert_equal(@song3, create_song('Lines on my Face', 'Peter Frampton', 'rock'))
  # end

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
