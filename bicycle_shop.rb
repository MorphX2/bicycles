def create_bicycle_list
  list = Hash.new
  puts "What type of bicycle do you want?"
  type = gets.chomp
  puts "Please specifiy bicycle tranny type"
  tranny = gets.chomp

  list = { "BikeType" => type, "BikeTranny" => tranny }

  return list
end

def create_bicycle_gear_list
  gear_list = Hash.new
  puts "Please specify accessery item name: "
  gear_name = gets.chomp
  puts "Please specify quantity: "
  gear_quantity = gets.chomp

  gear_list = { "Accessory Name" => gear_name, "Quantity" => gear_quantity }

  return gear_list
end

def shopping_cart_details( bike_list, gear_list )
  final_list = bike_list.merge(gear_list)
  return final_list
end

bike_selection = create_bicycle_list()
gear_selection = create_bicycle_gear_list()
puts shopping_cart_details(bike_selection, gear_selection)

