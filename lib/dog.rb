class Dog 
    attr_accessor :name
    @@all = Array.new

    def initialize(name)
        @name = name
        # @@all << self
        save
    end

    def self.all 
        @@all
    end

    def self.clear_all
        @@all = Array.new
    end

    def self.print_all
        @@all.each { |dog| puts dog.name }
    end

    def save
        @@all << self
    end
end