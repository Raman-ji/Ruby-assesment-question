def non_repeat_character(str)
  repeat = nil

  str.chars.each do |char|
    index = str.index(char)
    next if str[(index + 1)...str.size].include?(char)
    repeat = char
    break
  end

  repeat.nil? ? -1 : repeat
end

puts 'Enter a string : '
str = gets.chomp

puts non_repeat_character(str)
