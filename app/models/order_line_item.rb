class OrderLineItem < ApplicationRecord
  belongs_to :inventory_item, required: false
  belongs_to :order, required: false

  #validates :order_item_qty, presence: true, numericality: { only_integer: true, greater_than: 0 }
  def total_price
    inventory_item.price.to_i * order_item_qty.to_i
  end
end
