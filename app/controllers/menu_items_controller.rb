class MenuItemsController < ApplicationController
	def create
     @restaurant = Restaurant.find(params[:restaurant_id])
     @menu_item = @restaurant.menu_items.create(menu_item_params)
     redirect_to restaurant_path(@restaurant)
    end

  private
    def menu_item_params
      params.require(:menu_item).permit(:item, :cost)
    end
end
