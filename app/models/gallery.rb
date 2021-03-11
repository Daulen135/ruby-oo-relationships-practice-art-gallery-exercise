class Gallery

  attr_reader :name, :city
  @@all=[]

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def paintings
    #Returns an `array` of all paintings in a gallery
    Painting.all.select do |object|
    self == object.gallery
    end
  end

  def artists
    #Returns an `array` of all artists that have a painting in a gallery
    paintings.map{|object|object.artist}
  end

  def artist_names
    #Returns an `array` of the names of all artists that have a painting in a gallery
  artists.map{|object|object.name}
  end

  def most_expensive_painting
    paintings.max_by do |object|
    object.price
    end
  end

  def self.all
    @@all
  end

end


  