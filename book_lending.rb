# Book Lending

class Book

  def self.create
    new_book = self.new
    @@on_shelf << new_book
    return new_book
  end

  def self.current_due_date
  end
  def self.overdue_books
  end
  def self.browse
  end
  def self.available
    @@on_shelf
  end
  def self.borrowed
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

  end

  def return_to_library

  end

  def lent_out?

  end









end
