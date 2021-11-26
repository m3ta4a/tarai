module Tarai
  def self.tarai(x, y, z)
    if y < x
      tarai(
        tarai(x - 1, y, z),
        tarai(y - 1, z, x),
        tarai(z - 1, x, y)
      )
    else
      y
    end
  end
end

puts Tarai::tarai(14, 7, 0)

