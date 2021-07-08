# Add your code here
class Dog
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.print_all
        @@all.each { |dog_obj| puts dog_obj.name }
    end

    def self.clear_all
        @@all.clear
    end
end