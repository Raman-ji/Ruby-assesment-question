def consecutive_sequence(my_arr)
  my_arr.sort
  max_count = 1
  min_count = 1
  my_arr.each do |num|
    min_count += 1 if my_arr.include?(num + 1)
    max_count = min_count if min_count > max_count
  end
  max_count
end

puts 'Enter the size of the array '
size = gets.chomp.to_i

puts 'Enter the element in the array '
arr = []

size.times do
  element = gets.chomp.to_i
  arr.push(element)
end

puts consecutive_sequence(arr)
