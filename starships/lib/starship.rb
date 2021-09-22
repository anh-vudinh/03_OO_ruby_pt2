require 'pry'
class Starship 

    @@all = [] #job is to store all instances of class

    #attr_accessor :name, :model, :color

    # def initialize(name:, model:)
    #     self.name = name
    #     self.model = model
    #     save
    # end 

    def initialize(attributes)
        attributes.each do |key, value|
            #binding.pry
            #self.attr_accessor :key #dynamically set attr accessor
            self.send("#{key}=", value)
        end
        save
    end

    def save
        @@all << self
    end

    def self.all #Starship.all, called class method if it uses self
        @@all
    end

    def print_name
        puts self.name
    end

    def self.find(name)
        self.all.find do |starship|
            starship.name == name
        end
        binding.pry
    end

end 

#Starship.all
starshipA = Starship.new({name:"icelanding", model:"falcon", color:"red"})
#starshipB = Starship.new({name:"ice", model:"fal"})
# starship.print_name
#binding.pry