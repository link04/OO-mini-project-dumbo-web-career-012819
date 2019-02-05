class Recipe

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    Recipe.all.max_by do |recipe|
      recipe.users.count
    end
  end

  def users
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}.map {|recipe_card| recipe_card.user}
  end
  def ingredients
    RecipeIngredient.all.select {|recipe_ingredient| recipe_ingredient.recipe == self}.map {|recipe| recipe.ingredient}.uniq
  end
  def allergens
    Allergen.all.select { |allergen| self.ingredients.include?(allergen.ingredient)}.map {|recipe| recipe.ingredient}.uniq
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end

end
