#require 'date'

class Guest

  attr_reader :name
  attr_accessor :guest

  def initialize(name, room_name)
    @name = name
    @currently_in_room = room_name
  end

  def add_guest(name)

  end

  # def lend_book(book, customer)
  #   #binding.pry
  #   @books_in_stock.delete(book)
  #   @books_on_loan.push(book)
  #   customer.books.push(book)
  #   book.on_loan_until_date = Date.today + loan_period
  # end

end
