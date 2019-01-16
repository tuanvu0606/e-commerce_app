class StaticPagesController < ApplicationController
  def home
  	@static_pages  = InventoryItem.paginate(page: params[:page], :per_page => 9)
  	@inventory_item_categories = InventoryItemCategory.all
    #@inventory_models = InventoryModels.all
    @order_line_item = @order.order_line_items.new
    @best_seller = InventoryItem.find_by(sold_quantity: InventoryItem.maximum(:sold_quantity))
    #binding.pry
  end

  def help
  end

  def about_us
  end

  def contact
  end

  def categories
    @inventory_item_categories = InventoryItemCategory.all
  end

  def set_cookies
    cookies[:user_name]   = "Horst Meier" 
    cookies[:customer_number] = "1234567890" 
  end
  
  def show_cookies
    @user_name    = cookies[:user_name]
    @customer_number = cookies[:customer_number]
  end
  
  def delete_cookies
    cookies.delete :user_name
    cookies.delete :customer_number
  end

  def checkout
    
  end
end