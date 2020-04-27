class VentureCapitalist
    
    attr_accessor :name, :total_worth
     
    @@all = [ ]

   def initialize(name, total_worth)
       @name = name
       @total_worth = total_worth
       @@all << self
   end

 #Class method that returns an array of all of the VentureCapitalist instances  
   def self.all
       @@all
   end

#Class method that returns an array of all venture capitalists in the Trés Commas club
   def self.tres_commas_club
       self.all.select{|vc| vc.total_worth > 1000000000}
   end

end
