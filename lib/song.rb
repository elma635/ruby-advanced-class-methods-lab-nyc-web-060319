class Song
  attr_accessor :name, :artist_name
  @@all = []

def initialize(name, artist_name)
  @name = name
  @artist_name = artist_name

  @@all << self
end



  def self.all
    @@all
  end

#HELP ON  THIS  METHOD
  def self.create
    song = self.new
    song.name = name
    @@all << song
  end

#HELP
  def self.create_by_name(name)
    @@all.find do |song|
      song.create.name = name
    end
  end

#DONE
  def self.find_by_name(name)
    @@all.find do |song| song.name == name
    end
  end



#HELP
  def self.new_by_name(name)
    @@all.map do |song|
      song.name = name
    end
  end



  def save
    self.class.all << self
  end


end
