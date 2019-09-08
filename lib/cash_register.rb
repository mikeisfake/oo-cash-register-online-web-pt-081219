require 'pry'

class CashRegister
  
attr_accessor :total, :discount , :items

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
end 

def add_item(title, price, quantity=1)
  @total += (price * quantity)
  quantiy.times do @items << title
end 

def apply_discount
  if !@discount  
    "There is no discount to apply." 
  else
    percent = @discount / 100.to_f
    total_with_discount =  @total - (@total * percent)
    @total = total_with_discount.to_i
    "After the discount, the total comes to $#{@total}."
  end 
end 

def items
  @items
end 






end
