# Add your code here

class Dog
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end

    def self.all
        return @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.each {|d| puts d.name}
    end

    def save
        @@all << self
    end
end 