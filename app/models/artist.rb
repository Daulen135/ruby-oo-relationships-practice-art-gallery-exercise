class Artist
  @@all=[]
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    #Returns an `array` all the paintings by an artist #
    Painting.all.select do |object|
      self == object.artist
    end
  end

  def gallerys
    #Returns an `array` of all the galleries that an artist has paintings in
    paintings.map do |object| 
      object.gallery
    end
  end

  def cities
    #Return an `array` of all cities that an artist has paintings in
      gallerys.map do |object|
      object.city
    end
  end

  

  def self.total_experience
    #eturns an `integer` that is the total years of experience of all artists
    self.all.reduce(0) do |sum, artist|
      sum + artist.years_experience
    end
  end


  def self.most_prolific
    #Returns an `instance` of the artist with the highest amount of paintings per year of experience.
    self.all.max_by do |artist|
    artist.paintings.length / artist.years_experience
    end
  end



end
