def num_islands(grid)
  return 0 if grid.empty?

  rows = grid.length
  cols = grid[0].length
  islands = 0

  (0...rows).each do |r|
    (0...cols).each do |c|
      next if grid[r][c] == "0"

      islands += 1
      queue = [[r, c]]
      grid[r][c] = "0"

      while !queue.empty?
        row, col = queue.shift

        directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]

        directions.each do |dr, dc|
          nr = row + dr
          nc = col + dc

          if nr >= 0 && nr < rows &&
             nc >= 0 && nc < cols &&
             grid[nr][nc] == "1"

            queue << [nr, nc]
            grid[nr][nc] = "0"
          end
        end
      end
    end
  end

  islands
end

grid = [
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]

puts num_islands(grid)