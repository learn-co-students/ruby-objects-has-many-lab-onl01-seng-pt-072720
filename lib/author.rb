class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select { self }
  end

  def add_post(new_post)
    new_post.author = self
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    post_title.author = self
  end

  def self.post_count
    Post.all.select { self }.count
  end

end
