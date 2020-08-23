class Author
    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
        @posts << self 
    end

    def posts 
        Post.all.select{|post| post.author = self}
    end

    def add_post(post)
        @author = self 
        post.author = @author
        @posts << post 
    end

    def add_post_by_title(post)
        post = Post.new(post)
        post.author = self 
    end

    def self.post_count
        Post.all.count 
    end



end
