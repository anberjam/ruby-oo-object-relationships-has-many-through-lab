class Genre
    @@all = []

    attr_accessor :song, :name

    def initialize (name)
        @name=name
        @@all<< self
    end
    
    def self.all
        @@all
    end
end