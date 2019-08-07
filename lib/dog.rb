require 'pry'
class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end  # ends initialize method

  def self.all
    @@all
  end  #ends self.all method

  def self.clear_all
    @@all = []
  end  #ends self.clear_all method

  def self.print_all
    self.all.each do |dog|
      puts dog.name      
    end  #ends self.all.each loop
  end  #ends self.print_all method

  def save
    @@all << self
  end  #ends save method


  # binding.pry
end

