def flood_fill(image, sr, sc, color)
  original = image[sr][sc]

  return image if original == color

  dfs(image, sr, sc, original, color)

  image
end

def dfs(image, row, col, original, color)
  return if row < 0 ||
            col < 0 ||
            row >= image.length ||
            col >= image[0].length ||
            image[row][col] != original

  image[row][col] = color

  dfs(image, row + 1, col, original, color)
  dfs(image, row - 1, col, original, color)
  dfs(image, row, col + 1, original, color)
  dfs(image, row, col - 1, original, color)
end



image = [
  [1,1,1],
  [1,1,0],
  [1,0,1]
]

sr = 1
sc = 1
color = 2

p flood_fill(image, sr, sc, color)