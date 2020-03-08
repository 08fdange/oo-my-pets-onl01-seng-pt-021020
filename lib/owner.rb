class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    save
    @o_cats = []
    @o_dogs = []
  end
  
  def save
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    Cat.all.select do |instance|
      self == instance.owner
    end
  end
  
  def dogs 
    Dog.all.select do |instance|
      self == instance.owner
    end
  end
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name, self)
  end
      
  def buy_dog(dog_name) 
    new_dog = Dog.new(dog_name, self)
  end
    
end