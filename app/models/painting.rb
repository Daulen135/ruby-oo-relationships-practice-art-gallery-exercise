class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(artist,gallery, title, price)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    self.class.all << self
  end


  
  def self.total_price
    #* Returns an `integer` that is the total price of all paintings -->
    self.all.reduce(0) do |sum, painting|
      sum + painting.price
    end
  end



  def self.all
    @@all
  end
  
end
