class Product
 attr_reader :stock
 @@total = 20
 def initialize(stock = 15)
   @stock = stock
 end

 def self.total
   @@total
 end

 def total
   @stock + 30
 end
end
