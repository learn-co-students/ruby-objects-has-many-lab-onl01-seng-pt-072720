# An author should have many post and 
# a post should belong to an author. 

class Post 
    attr_accessor :author 
    @@all = []

    def initialize(title)
        @title = title
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def title 
        @title 
    end 
    # skip the #title by adding attr_accessor :title

    def author_name 
        self.author.name if self.author != nil 
        # author.name if author 
    end 

end 