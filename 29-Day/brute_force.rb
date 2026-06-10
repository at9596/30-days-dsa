def flood_fill(image, sr, sc, color)
  original = image[sr][sc]
  return image if original == color

  queue = [[sr, sc]]
  image[sr][sc] = color

  directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]

  while !queue.empty?
    row, col = queue.shift

    directions.each do |dr, dc|
      nr = row + dr
      nc = col + dc

      if nr >= 0 && nr < image.length &&
         nc >= 0 && nc < image[0].length &&
         image[nr][nc] == original

        image[nr][nc] = color
        queue << [nr, nc]
      end
    end
  end

  image
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