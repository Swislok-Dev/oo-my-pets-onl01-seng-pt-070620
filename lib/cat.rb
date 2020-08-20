class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@cats = []

  def self.all
    @@cats
  end

  def self.clear
    cats.clear
  end

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@cats << self
  end


end