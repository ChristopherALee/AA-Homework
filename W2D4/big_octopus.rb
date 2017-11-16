# Big O-ctopus and Biggest Fish
fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

class Array

  def sluggish_octopus
    sorted = false
    until sorted
      sorted = true

      i = 0
      while i < self.length - 1
        j = i + 1
        if self[i].length > self[j].length
          self[i], self[j] = self[j], self[i]
          sorted = false
        end

        i += 1
      end
    end

    self.last
  end

  def dominant_octopus(&prc)
    return [] if self.empty?
    prc ||= Proc.new { |x,y| x<=>y }

    probe = self.shift

    left = self.select { |el| prc.call(el.length, probe.length) == -1 }
    right = self.select { |el| prc.call(el.length, probe.length) != -1 }

    left.dominant_octopus(&prc) + [probe] + right.dominant_octopus(&prc)
  end

  def clever_octopus
    held_fish = nil
    held_fish_length = 0

    self.each do |fish|
      held_fish = fish if fish.length > held_fish_length
    end

    held_fish
  end
end



# Dancing Octopus
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_array)
  tiles_array.each do |tile|
    return dir if tile == dir
  end
end

new_tiles_data_structure = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def constant_dance!(dir, new_tiles_data_structure)
  new_tiles_data_structure[dir]
end

# TESTS
fish.sluggish_octopus
fish.dominant_octopus.last
fish.clever_octopus
slow_dance("up", tiles_array)
slow_dance("right-down", tiles_array)
constant_dance!("up", new_tiles_data_structure)
constant_dance!("right-down", new_tiles_data_structure)
