class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end   
  
  def posts
    Post.all.select {|post| post.author == self}
  end   
  
  def add_post(post)
    post.author = self
  end   
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end   
  
  def self.post_count 
    Post.all.count
  end   
  
end   


#   def songs 
#     Song.all.select {|song| song.artist == self}
#   end   
  
#   def self.song_count
#     Song.all.count
#   end 
# end   