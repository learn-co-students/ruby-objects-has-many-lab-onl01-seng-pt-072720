class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|posts| posts.author == self}
    end

    def add_post(name)
        name.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def self.post_count
        Post.all.count 
    end


end