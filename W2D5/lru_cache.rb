class LRUCache
  attr_accessor :cache

  def initialize(length)
    @cache = Array.new(length)
  end

  def count
    # returns number of elements currently in cache
    self.cache.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if self.cache.empty?
      self.cache.unshift(el)
    elsif self.cache.include?(el)
      self.cache.delete(el)
      self.cache.unshift(el)
    else
      self.cache.pop
      self.cache.unshift(el)
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p cache
    nil
  end

  private
  # helper methods go here!

end
