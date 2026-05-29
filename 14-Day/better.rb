class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end

def build_list(arr)
  dummy = ListNode.new(-1)
  current = dummy

  arr.each do |num|
    current.next = ListNode.new(num)
    current = current.next
  end

  dummy.next
end


def print_list(head)
  result = []

  while head
    result << head.val
    head = head.next
  end

  p result
end


def merge_two_lists(list1, list2)
  dummy = ListNode.new(-1)
  current = dummy

  while list1 && list2
    if list1.val <= list2.val
      current.next = list1
      list1 = list1.next
    else
      current.next = list2
      list2 = list2.next
    end

    current = current.next
  end

  current.next = list1 || list2

  dummy.next
end

list1 = [1, 2, 4]
list2 = [1, 3, 4]

l1 = build_list(list1)
l2 = build_list(list2)


merged = merge_two_lists(l1, l2)


print_list(merged)