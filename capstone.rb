require 'http'
require 'tty-table'

system "clear"

puts "Welcome to the Katie's Favorite Things store."
puts "Here is a list of all of our products:"

response = HTTP.get("http://localhost:3000/all_products")

products = response.parse

table = TTY::Table.new(["Item Name", "Price", "Image URL", "Description"], [[products[0]["name"], products[0]["price"], products[0]["image_url"], products[0]["description"]], [products[1]["name"], products[1]["price"], products[1]["image_url"], products[1]["description"]], [products[2]["name"], products[2]["price"], products[2]["image_url"], products[2]["description"]]])

puts table.render(:ascii)