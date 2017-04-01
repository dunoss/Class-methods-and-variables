# Book Lending

class Book

  def self.create(title, author, isbn)
    new_book = self.new(title, author, isbn)
    @@on_shelf << new_book
    new_book
  end

  def self.current_due_date
  end
  def self.overdue_books
  end
  def self.browse
    @@on_shelf.sample
  end
  def self.available
    @@on_shelf
  end
  def self.borrowed
    @@on_loan
  end


  @@on_shelf = []
  @@on_loan  = []

  attr_accessor :due_date

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def borrow
    @@on_loan << self
  end

  def return_to_library

  end

  def lent_out?

    if Book.borrowed.include?( self )
    return true
  else
    return false
  end

end

end
