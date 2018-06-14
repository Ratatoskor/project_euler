=begin

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid
=end

def lattice_paths(arr_start, arr_end)
  if arr_start[0] > arr_end[0] || arr_start[1] > arr_end[1]
    return 0
  end

  if  arr_start[0]==arr_end[0] && arr_start[1]==arr_end[1]
    count = 1
  end

  if arr_start[0] 
  count = 0
  count = count + lattice_paths([arr_start[0]+1, arr_start[1]], arr_end)
  count = count + lattice_paths([arr_start[0], arr_start[1]+1], arr_end)

  puts count
end


puts lattice_paths([0,0],[20,20])
