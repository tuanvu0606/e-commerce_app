class InventoryItemCategory < ApplicationRecord
	has_many :inventory_items
end
