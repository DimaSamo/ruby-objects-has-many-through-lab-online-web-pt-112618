class Artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all.push(self)
  end

end
