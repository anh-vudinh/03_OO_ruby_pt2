require 'pry'
class Pizza
    attr_accessor :name, :ingredients, :desc

    # def initialize(name, ingredients, desc)
    #     self.name = name
    #     self.ingredients = ingredients
    #     self.desc = desc
    # end

    @@all = []

    def initialize(attributes) # 1. The initialize method should take in keyword arguments, and mass assign the attributes. 
        attributes.each do |key, value|
            self.send("#{key}=", value)
        end
        save # 2. The class needs to remember its objects
    end

    def save
        @@all << self
    end

    def self.all # 3. Create a class method that will return the array of all objects, the method should be called `.all`
        @@all
    end

    def self.find(name)
        self.all.find do |pizza| # 4. Create a class method `.find` that will accept a name argument and return the matching pizza instance
            pizza.name === name
        end
        binding.pry
    end

    def print_attributes
        puts self.name
        puts self.ingredients
        puts self.desc
    end 
end

pizzaA = Pizza.new(desc:"dA", ingredients:"iA", name:"nA")

Pizza.find("nA")
#binding.pry