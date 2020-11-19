class Post 
    attr_accessor :title, :author
    @@all = [] 

    def initialize(name)
        @title = name
        @@all << self
    end 

    def self.all 
        @@all 
    end 


    def author= (writer)
        writer.posts << self 
        @author= writer 
      end 

    def author_name 
        (self.author.nil?) ? nil : self.author.name
    end 
end 