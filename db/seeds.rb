require 'open-uri'
require 'json'

puts 'Creating drinks...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized_ = open(url).read
ingredients = JSON.parse(ingredients_serialized_)

x = 0

ingredients["drinks"].each do |ingredient|
  ing = Ingredient.create(name: ingredient["strIngredient1"])
  x += 1
end
puts "Created #{x} seeds!"
