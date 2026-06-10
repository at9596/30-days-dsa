def num_islands(grid)
  return 0 if grid.empty?

  islands = 0

  (0...grid.length).each do |r|
    (0...grid[0].length).each do |c|
      if grid[r][c] == "1"
        dfs(grid, r, c)
        islands += 1
      end
    end
  end

  islands
end

def dfs(grid, r, c)
  return if r < 0 ||
            c < 0 ||
            r >= grid.length ||
            c >= grid[0].length ||
            grid[r][c] == "0"

  grid[r][c] = "0"

  dfs(grid, r + 1, c)
  dfs(grid, r - 1, c)
  dfs(grid, r, c + 1)
  dfs(grid, r, c - 1)
end

grid = [
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]

puts num_islands(grid)