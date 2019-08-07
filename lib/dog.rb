class Dog
    @@all = [] 
    
    def initialize(name)
        @name = name
        self.save
    end

    def name
        @name
    end
    
    def save
        @@all << self 
    end    
    
    def self.all #called on the class self. NOT a method of the instance => GPS to all the BMWs. To call this it would be Dog.all. @@ keeps tracks of all the dogs/BMWs that were ever created. 
        @@all
    end
    
    def self.print_all
        @@all.each do |dog|
            puts dog.name
        end
    end
    
    def self.clear_all
        @@all.clear
    end
end

