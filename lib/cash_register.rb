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
  percent = @discount / 100.to_f
  total_with_discount =  @total - (@total * percent) 

  if !@discount  
    "There is no discount to apply." 
  else
    @total = total_with_discount.to_i
    "After the discount, the total comes to $#{@total}."
  end 
  
end 






end
