# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length < 2

  halfway = arr.length / 2
  left_half = merge_sort(arr[0...halfway])
  right_half = merge_sort(arr[halfway..arr.length])

  merge(left_half, right_half)
end

def merge(left, right, ret = [])
  ret << (left.first <= right.first ? left.shift : right.shift) until left.empty? || right.empty?

  ret << left.shift until left.empty?
  ret << right.shift until right.empty?

  ret
end

p merge_sort([4, 8, 6, 2, 1, 7, 5, 3])
