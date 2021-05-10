require 'http'

system "clear"

puts "Welcome to the Katie's Favorite Things store."
puts "Here is a list of all of our products:"

response = HTTP.get("http://localhost:3000/products")

products = response.parse

puts "Here are the products we offer:"
products.each do |product|
  puts "==========================================="
  puts
  puts "ID: #{product["id"]}"
  puts product["name"]
  puts "$#{product["price"]}"
  puts
end

puts "If you would like to view more about a product, please enter product id"
id = gets.chomp

response = HTTP.get("http://localhost:3000/products/#{id}")

product = response.parse

puts "==========================================="
puts
puts product["name"]
puts "$#{product["price"]}"
puts product["description"]
puts product["image_url"]
puts

puts "Please add an item to our store!"
puts
puts "What is the name of the product?"
name = gets.chomp
puts "What is the price?"
price = gets.chomp.to_i
puts "Describe the product"
description = gets.chomp
puts "What is the image url?"
image_url = gets.chomp

response = HTTP.post("http://localhost:3000/products", :params => {:name => name, :price => price, :description => description, :image_url => image_url})

response = HTTP.get("http://localhost:3000/products")

products = response.parse

puts
puts "Here is the updated list of products we offer:"
products.each do |product|
  puts "==========================================="
  puts
  puts "ID: #{product["id"]}"
  puts product["name"]
  puts "$#{product["price"]}"
  puts
end

puts "If you would like to delete an item, please enter the id of the product you would like to delete."
id = gets.chomp

response = HTTP.delete("http://localhost:3000/products/#{id}")