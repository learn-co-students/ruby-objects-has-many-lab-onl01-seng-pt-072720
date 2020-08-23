class Author
    attr_accessor :posts, :name
    
        def initialize(name)
            @name = name
            @posts = []
        end

    def posts
        Post.all
    end

    def add_post(post)
        @posts << post
        post.author = self
    end


    def add_post_by_title(post_title)
        post = Post.new(post_title)
        @posts << post
        post.author = self
    end
    #def self.song_count
      #  Song.all.count
    #end
    def self.post_count
        Post.all.count
    end

end