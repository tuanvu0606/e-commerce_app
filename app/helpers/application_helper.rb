module ApplicationHelper

  def cart_count_over_one
  	#binding.pry
    if @order.order_line_items.count > 0
      return "<span class='tag is-dark'>#{@order.order_line_items.count}</span>".html_safe
      #render html: @cart.order_line_items.count
    end
  end

  def cart_has_items
    return @order.order_line_items.count > 0
  end	
end
