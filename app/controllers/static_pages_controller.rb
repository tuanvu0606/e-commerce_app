class StaticPagesController < ApplicationController
  def home
  	@static_pages  = InventoryItem.paginate(page: params[:page], :per_page => 3)
  	@inventory_item_categories = InventoryItemCategory.all
    @order_line_item = @order.order_line_items.new
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
end