class Order < ApplicationRecord
  belongs_to :restaurant

  def sum
  	@total = 0

  	orders.each do |o|
  		@total = @total + o.cost
  	end

  	puts @total
  end
  
end
