def maximum_subarray_sum(arr)
  sum = arr[0]
  (0...arr.size).each do |num1|
    sub_sum = 0
    (num1...arr.size).each do |num2|
      sub_sum += arr[num2]
      sum = [sub_sum, sum].max
    end
  end
  sum
end

puts 'Enter the size of the array '
size = gets.chomp.to_i

puts 'Enter the element in the array '
arr = []

size.times do
  element = gets.chomp.to_i
  arr.push(element)
end

puts maximum_subarray_sum(arr)
