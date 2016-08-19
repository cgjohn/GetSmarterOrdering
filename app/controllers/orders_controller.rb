class OrdersController < ApplicationController
  def create
   @restaurant = Restaurant.find(params[:restaurant_id])
   @order = @restaurant.orders.create(order_params)
   redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = @restaurant.orders.find(params[:id])
    @order.destroy
    redirect_to restaurant_path(@restaurant)
  end

  private
    def order_params
      params.require(:order).permit(:name, :item, :cost)
    end
end
