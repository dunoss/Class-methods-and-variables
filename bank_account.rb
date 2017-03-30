class BankAccount

  @@interest_rate = 1.01
  @@accounts = []

def self.create
  new_account = BankAccount.new
  @@accounts << new_account
  return new_account

end

def self.total_funds
  total = 0
  @@accounts.each do |account|
    total += account.balance
  end
  return total 
end

def self.interest_time
  @@accounts.each do |account|
    account.balance = @@interest_rate * account.balance
  end
end

attr_accessor :balance

def initialize
  @balance = 0

end

def deposit(num)
  @balance += num
end

def withdraw(num)
  @balance -= num

end





end
