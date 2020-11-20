class Owner
  
  attr_reader :name, :species
  
  @@all =[]

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
   
  end
  
  def say_species
   "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    
  end

  def cats
    Cat.all.select do |cat| cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog| dog.owner == self
    end
  end

  def buy_cat(new_cat)
    Cat.new(new_cat, self)
  end

  def buy_dog(new_dog)
    Dog.new(new_dog, self)
  end

  def walk_dogs
    self.dogs.each do |dog| 
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat| 
      cat.mood = "happy"
  end
end

def sell_pets
  self.cats.each do |cat|
    cat.mood = "nervous"
    cat.owner = nil
  end
  self.cats.clear
  self.dogs.each do |dog|
    dog.mood = "nervous"
    dog.owner = nil
  end
  self.dogs.clear
end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end

  # code goes here
end