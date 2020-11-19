class Author 

    attr_accessor :name 
    @@posts =[]

    def initialize(name)
        @name = name
    end 

    def posts
        @@posts 
    end 

    def add_post(title)
        title.author = self
    end 

    def add_post_by_title(post_title)
        post_name = Post.new(post_title)
        post_name.author = self 
    end 

    def self.post_count 
        @@posts.length 
    end 
end 