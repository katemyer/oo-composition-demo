require_relative "order"
require_relative "shipment"
require_relative "merchant"
require_relative "product"

# Demonstrate One to One relationships using Order and Shipment
puts "**********************************"
puts "ONE TO ONE RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Order with ID 1207
light_order = Order.new(1207)
# Make an instance of Order with ID 1392
coffee_order = Order.new(1392)
# Make an instance of Shipment with a tracking no. of 34668
light_shipment = Shipment.new(34668)
# Make an instance of Shipment with a tracking no. of 66243
coffee_shipment = Shipment.new(66243)
# Read the @shipment attribute of order 1207
light_order.shipment
puts "\n\n\nBefore setting the @shipment attribute, we can read the value of @shipment on the Order instance and get nil (which prints as empty string)"

# Set the attribute of @shipment in order 1207 to shipment 334668
light_order.shipment = light_shipment
# Read the shipment attribute of order 1207 again
puts "#{light_order.shipment}"
p light_order.shipment

####
coffee_order = Order.new(1392, coffee_shipment)
puts "coffee.shipment = #{coffee_order.shipment}"
#Nesting Order Instantiation
kate_order = Order.new(1270, Shipment.new(1111))

puts "\n\n\nAfter setting the @shipment attribute, we can read the value of @shipment on the Order instance and get a value!"



# Demonstrate One to Many relationships using Merchant and Product
puts "\n\n\n**********************************"
puts "ONE TO MANY RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Merchant with name "Hamled"
hamled = Merchant.new("Hamled")
# Make an instance of Merchant with name "tildeee"
tildeee = Merchant.new("Tildeee")

list_of_merchants = [hamled, tildeee]

# Make an instance of Product with name "Sandals"
sandals = Product.new("Sandals")
# Make an instance of Product with name "Fish Oil"
fish_oil = Product.new("Fish Oil")
# Make an instance of Product with name "Bath Salts"
bath_salts = Product.new("Bath Salts")
# Make an instance of Product with name "Almond Flour"
almond_flour = Product.new("Almond Flour")

# Read the @products attribute of Hamled
puts "\n\n\nBefore modifying the @products attribute, we can read the value of @product on the Merchant instance and get an empty array (which prints as empty string)"
puts "#{hamled.products}"

# Shovel the products "sandals" and "fish oil" into Hamled's @products array
hamled.products << sandals
hamled.products.push(fish_oil)

tildeee.products << almond_flour
tildeee.products << sandals

# Read the @products attribute of Hamled again
puts "\n\n\nAfter modifying the @products attribute, we can read the value of @products on the Merchant instance and get a value!"
puts "#{hamled.products}"

# What is the data type of Hamled's @products attribute?
### Array containing object: products
# How do we read the names of every product that Hamled has?
hamled.products.each do |a_product|
  puts a_product.name
end

puts
puts
puts
puts

# Loop through list of merchants and list their products

list_of_merchants.each do |merchant|
  puts "Merchant #{merchant.name}'s Products"
  merchant.products.each do |product|
    puts "\t#{product.name}"
  end
end

# Optional: Can we refactor that?
### Create a method
