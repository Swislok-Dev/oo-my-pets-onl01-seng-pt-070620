class Owner
  attr_reader :name, :species, :cats, :dogs

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def cats
    Cat.all
  end

  def dogs
    Dog.all
  end

  def buy_cat(cat)
    Cat.new(cat)
  end


end