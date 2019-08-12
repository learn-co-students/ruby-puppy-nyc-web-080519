require 'pry'

class Dog

    @@all = []
    attr_reader :name 

    
    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self

    end

    def self.all
        @@all
    end

    def self.print_all

        self.all.each do |dog|
            puts dog.name
        end

    end

    def self.clear_all
        self.all.clear


    end



end


# Add your code here