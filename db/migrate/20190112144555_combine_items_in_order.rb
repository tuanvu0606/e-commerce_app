class CombineItemsInOrder < ActiveRecord::Migration[5.2]
  def up
    Order.all.each do |order|
      sums = order.order_line_items.group(:inventory_item_id).sum(:order_item_qty)
      sums.each do |inventory_item_id, order_item_qty|
        if order_item_qty > 1
          order.order_line_items.where(inventory_item_id: inventory_item_id).delete_all

          item = order.order_line_items.build(inventory_item_id: inventory_item_id)
          item.order_item_qty = order_item_qty
          item.save!
        end
      end
    end
  end

  def down
    #split items with a order_item_qty of 1 or more into multiple items
    OrderLineItem.where("order_item_qty>1").each do |order_line_item|
      order_line_item.order_item_qty.times do
        OrderLineItem.create(
          order_id: order_line_item.order_id,
          inventory_item_id: order_line_item.inventory_item_id,
          order_item_qty: 1
        )
      end
      # remove original line item
      order_line_item.destroy
    end
  end
end
