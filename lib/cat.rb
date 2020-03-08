class Cat
  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end
  
  def save
    @@all << self
  end
  
  def owner=(name)
    self.owner = name
    self.save
  end
  
  def self.all
    @@all
  end
  
end