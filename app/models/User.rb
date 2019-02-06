class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def complete_recipes
    RecipeCard.all.select {|recipe_card| recipe_card.user == self}
  end

  def recipes
    self.complete_recipes.map {|recipe_card| recipe_card.recipe}
  end
  def ingredients
    RecipeIngredient.all.select {|recipe_ingredient| self.recipes.include?(recipe_ingredient.recipe)}.map {|recipe| recipe.ingredient}.uniq
  end
  def allergens
    Allergen.all.select { |allergen| allergen.user == self }.map {|recipe| recipe.ingredient}.uniq
  end

  def add_recipe_card(date,rating,recipe)
    RecipeCard.new(date,rating,self, recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient,self)
  end

  def most_recent_recipe
    self.recipes.pop
  end

  def top_three_recipes
    self.complete_recipes.sort_by do |recipe|
      -recipe.rating
    end.first(3)
  end

  def safe_recipes
    RecipeIngredient.all.select do |recipe_ingredient|
      !self.allergens.include?(recipe_ingredient.ingredient)
    end.map {|safe_recipe|safe_recipe.recipe}
  end

end
