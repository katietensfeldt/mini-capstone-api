
# Supplier.create!([
#   {name: "Green Thumb Nursery", email: "gtn@gmail.com", phone_number: "123-456-7890"},
#   {name: "Box Lunch", email: "boxlunch@gmail.com", phone_number: "789-456-1230"},
#   {name: "Funko Store", email: "info@funko.com", phone_number: "321-654-9870"},
#   {name: "Target", email: "info@target.com", phone_number: "111-222-3333"}
# ])
# Product.create!([
#   {name: "Monstera Plant", price: "20.0", description: "Medium sized monstera plant. Great for adding fresh air to the home.", inventory: 5, supplier_id: 1},
#   {name: "Fidget Toy", price: "7.0", description: "Small toy designed to relieve stress and improve focus.", inventory: 20, supplier_id: 2},
#   {name: "Pineapple Scented Candle", price: "10.0", description: "Bring the smell of hospitality to your home.", inventory: 13, supplier_id: 2},
#   {name: "Tinkerbell Funko Pop", price: "10.0", description: "Small figurine portraying the beloved character, Tinkerbell", inventory: 5, supplier_id: 2},
#   {name: "DnD Dice", price: "25.5", description: "Beautiful green tea inspired dnd dice set.", inventory: 18, supplier_id: 2},
#   {name: "Succulent Garden", price: "45.5", description: "Bring a small lovely desert-scape closer. This lovely planter is filled with some of the most beautiful desert plants.", inventory: 3, supplier_id: 1},
#   {name: "Women's Hiking Boots", price: "75.0", description: "These boots were made for walking... on a hiking trail!", inventory: 7, supplier_id: 5},
#   {name: "Tazo Matcha Mate Grapefruit", price: "5.0", description: "1 box of grapefruit matcha green tea. The box contains 18 individual tea bags.", inventory: 21, supplier_id: 5},
#   {name: "Hydration Backpack", price: "80.0", description: "Backpack meant to keep you hydrated on long hikes.", inventory: 4, supplier_id: 5},
#   {name: "Yoga Mat", price: "20.0", description: "Floral yoga mat to help you practice mindfulness.", inventory: 10, supplier_id: 5}
# ])
# Image.create!([
#   {url: "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1205923822-612x612-1597694031.jpg", product_id: 1},
#   {url: "https://c.shld.net/rpx/i/s/pi/mp/10160405/prod_9189258932?src=http%3A%2F%2Flykartstore.site%2Flykartimage%2FimageB%2FALVB07T4SV1Z4.jpg&d=597ae5c1f31c76fe1e875613b2671d0e187d3a63&hei=333&wid=333&op_sharpen=1", product_id: 2},
#   {url: "https://media.cntraveler.com/photos/5f99c33ff5bb028212972c2a/master/w_2100,h_1500,c_limit/Columbia-WomensHikingBoots-2020.jpg", product_id: 3},
#   {url: "https://i.pinimg.com/564x/86/c6/84/86c684608dffa3e6460abd86d4a833d1.jpg", product_id: 4},
#   {url: "https://cdn.shopify.com/s/files/1/1800/5707/products/81cRULfqvSL._SL1500_1024x1024@2x.jpg?v=1497593529", product_id: 2},
#   {url: "https://images-na.ssl-images-amazon.com/images/I/61WIrVE-gQL._AC_SL1500_.jpg", product_id: 6},
#   {url: "https://cdn11.bigcommerce.com/s-ccbay/images/stencil/2048x2048/products/30780/126260/api5umm2o__57639.1592329287.jpg?c=2", product_id: 6},
#   {url: "https://www.patagonia.com/dw/image/v2/BDJB_PRD/on/demandware.static/-/Sites-patagonia-master/default/dw6d5df9b2/images/hi-res/48440_GYPG.jpg?sw=1300&sh=1300&sfrm=png&q=85&bgcolor=f6f6f6", product_id: 11},
#   {url: "https://www.vivaterra.com/medias/sys_master/images/images/hc5/h86/10923817369630/succulent-garden-in-root-bowl.jpg", product_id: 13},
#   {url: "https://www.simpleskincare.com/sk-eu/content/dam/brands/tazo/canada/1971685-794522002221.png", product_id: 10},
#   {url: "https://i.etsystatic.com/13261405/r/il/69f594/3031780627/il_794xN.3031780627_op1t.jpg", product_id: 9},
#   {url: "https://static.contrado.com/DesignTemplates/products/65059_paradise-house-tropical-floral-blue-yoga-mat_0.jpeg?cache=6", product_id: 12}
# ])

Category.create!([
  {name: "Plant"},
  {name: "Outdoor"},
  {name: "Toy"},
  {name: "Collectable"}
])