
class CashRegister
    attr_accessor :discount, :total, :items, :previous_total

    def initialize(discount=0)
        @discount = discount
        @total =0
        @items=[]
    end
    def add_item(title, price, quantity=1)
        @previous_total = @total
        @total += price * quantity 
        quantity.times do
            @items << title 
        end
    end
    def apply_discount
        if discount > 0
            @total=total-((discount*0.01)*total)
            return "After the discount, the total comes to $#{total.to_i}."
        end
        "There is no discount to apply."
    end
    def items
        @items
    end
    def void_last_transaction
        @total= previous_total
    end
end