class Post 
  attr_accessor :author, :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self 
  end 
  
  def self.all
    @@all
  end
  
  def author_name
    if author !=nil 
      self.author = author.name 
    else
      return nil
    end
  end
end