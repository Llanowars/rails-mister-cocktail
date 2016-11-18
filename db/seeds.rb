url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
cocktails = JSON.parse(open(url).read)
cocktails_array = cocktails["drinks"].uniq.map { |ingredient| Ingredient.create!(name: ingredient) }