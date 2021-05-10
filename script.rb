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
  puts product["name"]
  puts "$#{product["price"]}"
  puts
end

puts "If you would like to view more about a product, please enter a number, 1-3"
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