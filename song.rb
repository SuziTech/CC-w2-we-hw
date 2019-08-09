class Song

  attr_reader :id, :title, :artist, :genre
  attr_accessor :song

  def initialize(id, title, artist, genre)
    @id = id
    @title = title
    @artist = artist
    @genre = genre
  end

  def add_song(id, title, artist,genre)

  end

  # def lend_book(book, customer)
  #   #binding.pry
  #   @books_in_stock.delete(book)
  #   @books_on_loan.push(book)
  #   customer.books.push(book)
  #   book.on_loan_until_date = Date.today + loan_period
  # end

end
