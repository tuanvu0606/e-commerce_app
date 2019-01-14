# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
InventoryItem.create!([{
  name: "Paul Reed Smith Paul's Guitar 2013",
  price: "700",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "1",
  inventory_model_id: "2"
},
{
  name: "Beautiful lady",
  price: "700",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "1",
  inventory_model_id: "2"
},
])