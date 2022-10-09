# frozen_string_literal: true

require_relative 'lab5_p3_func'
puts 'Введите количество строк:'
n_st = gets.to_i
str_array = []
n_st.times do |i|
  puts "Введите строку #{i + 1}:"
  str = gets.chomp!
  str_array.push(str)
end
puts 'Результат:'
Correct.new_str_array(str_array).each_with_index { |string, number| puts "#{number + 1}. #{string}\n" }
