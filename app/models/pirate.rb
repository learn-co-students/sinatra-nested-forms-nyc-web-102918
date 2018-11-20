class Pirate

  @@all = []

  attr_accessor :name, :weight, :height

  def initialize(params)
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
    @@all << self
  end

  def self.all
    @@all
  end
end
