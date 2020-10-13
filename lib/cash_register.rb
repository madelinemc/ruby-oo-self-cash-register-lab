class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0, total=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        quantity.times do
            @items << title
        end
        @total_before = @total
        @total += (quantity * price)
    end
    
    def apply_discount
        @total = (@total - @total * @discount.to_f / 100).to_i
        if @discount != 0
            "After the discount, the total comes to $#{@total}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total_before
    end
    
end
