class OrdersController < ApplicationController
  def create
   @restaurant = Restaurant.find(params[:restaurant_id])
   @order = @restaurant.orders.create(order_params)
   redirect_to restaurant_path(@restaurant)
  end

  def sum
  	@total = 0

  	orders.each do |o|
  		@total = @total + o.cost
  	end

  	puts @total
  end

  private
    def order_params
      params.require(:order).permit(:name, :item, :cost)
    end
end
