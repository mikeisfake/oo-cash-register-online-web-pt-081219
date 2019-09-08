require 'pry'

class CashRegister
  
attr_accessor :total, :discount 

def initialize(discount = nil)
  @total = 0
  @discount = discount
end 

def add_item(title, price, quantity=1)
  @total += (price * quantity)
end 

def apply_discount
  percent = @discount / 100
  total_with_discount =  @total * percent 

  @discount == nil ? "There is no discount to apply." : self.total = total_with_discount

end 






end
