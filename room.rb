#require 'date'

class Room

  attr_reader :name, :capacity
  attr_accessor :guests, :playlist

  def initialize(name, capacity, playlist, guests)
    @name = name
    @capacity = capacity
    @playlist = playlist
    @guests = guests
  end

  def add_playlist_to_room(requested_playlist)
    @playlist = requested_playlist
  end

  def add_guest_to_room(guest)
    @guests.push(guest)
  end

  def remove_guest_from_room(guest)
    @guests.delete(guest)
  end

  def get_number_of_guests_currently_in_room
    return @guests.count
  end


  # def lend_book(book, customer)
  #   #binding.pry
  #   @books_in_stock.delete(book)
  #   @books_on_loan.push(book)
  #   customer.books.push(book)
  #   book.on_loan_until_date = Date.today + loan_period
  # end

end
