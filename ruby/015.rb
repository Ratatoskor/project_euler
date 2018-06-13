=begin

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid
=end

def lattice_paths(arr_start, arr_end)
  count = 0

  x1 = arr_start[0]
  y1 = arr_start[1]

  if x1 > arr_end[0] || y1 > arr_end[1]
    return 0
  end

  if x1 == arr_end[0] && y1 == arr_end[1]
    return 1
  end
  puts count
  count = count + lattice_paths([x1+1,y1],arr_end) + lattice_paths([x1, y1+1], arr_end)

  return count
end


puts lattice_paths([0,0],[20,20])
