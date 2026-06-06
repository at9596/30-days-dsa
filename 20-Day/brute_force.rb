class TreeNode
    attr_accessor :val, :left, :right

    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end

    def max_depth(root)
        return 0 if root.nil?
        queue = [root]
        depth = 0
        while !queue.empty?
            size = queue.length  

            while size > 0
                node = queue.shift

                queue.push(node.left) if node.left
                queue.push(node.right) if node.right

                size -= 1
            end

            depth += 1
        end

        depth
    end
end

root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)

puts root.max_depth(root)

