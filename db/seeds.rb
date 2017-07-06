puts "destroying db"
Cocktail.destroy_all
Ingredient.destroy_all

puts "seeding ingredients"
url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
cocktails = JSON.parse(open(url).read)
cocktails["drinks"].uniq.map do |ingredient| 
  Ingredient.create!(name: ingredient["strIngredient1"])
end

puts "done"


# url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# cocktail = Cocktail.new(name: 'NES')
# cocktail.remote_photo_url = url
# cocktail.save


# url = 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail'
# drinks_serialized = open(url).read
# json = JSON.parse(drinks_serialized)
# drink = json["drinks"]
# drink.each do |cocktail|
#   cocktail = Cocktail.new(name: cocktail["strDrink"])
#   cocktail.remote_photo_url = cocktail["strDrinkThumb"]
# end

# c = Cocktail.new(name: "name")
# c.remote_photo_url = "http://www.thecocktaildb.com/images/media/drink/qyyvtu1468878544.jpg"
# c.save
# url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# cocktail = Cocktail.new(name: 'NES')
# cocktail.remote_photo_url = url
# cocktail.save