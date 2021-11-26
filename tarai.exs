defmodule Tarai do
  def tarai(x, y, z) when y < x do
    tarai(
      tarai(x-1, y, z),
      tarai(y-1, z, x),
      tarai(z-1, x, y)
    )
  end

  def tarai(_x, y, _z), do: y
end


IO.inspect(Tarai.tarai(14, 7, 0))
