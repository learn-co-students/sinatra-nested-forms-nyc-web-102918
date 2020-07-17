class Ship
  @@all=[]
  attr_accessor :name, :type, :booty
  def initialize(attributes)
    @name=attributes[:name]
    @type=attributes[:type]
    @booty=attributes[:booty]
    @@all << self
  end

    def self.all
      @@all
    end

    def self.clear
      @@all = []
    end


end
