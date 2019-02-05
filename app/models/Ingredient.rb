class Ingredient

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
      Allergen.all.group_by do |allergen|
        allergen.ingredient
      end.sort_by { |ingredient| -ingredient.count}[0][0]
  end

end
