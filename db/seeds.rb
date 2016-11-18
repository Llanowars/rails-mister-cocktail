url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
cocktails = JSON.parse(open(url).read)
cocktails_array = cocktails["drinks"].map { |h_ingredient| h_ingredient["strIngredient1"] }

cocktails_array.uniq.each do |cocktail|
  if cocktail != ""
    a = Ingredient.create!(name: cocktail)
  end
end