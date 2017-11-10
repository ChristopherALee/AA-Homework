class Map
  attr_accessor :map

  def initialize
    @map = []
  end

  def assign(key, value)
    map << [key, value]
  end

  def lookup(key)
    map.select { |pair| pair.first == key }
  end

  def remove(key)
    @map.reject! { |pair| pair.first == key }
  end

  def show
    @map.dup
  end
end
