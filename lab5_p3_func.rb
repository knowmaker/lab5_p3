# frozen_string_literal: true

# :reek:DuplicateMethodCall { max_calls: 3 }

# :reek:TooManyStatements { max_statements: 10 }

# :reek:NestedIterators

# class for changing strings
class Correct
  def self.new_str_array(a_str_array)
    anew_str_array = []
    a_str_array.map do |str|
      words = str.split
      words.each do |word|
        word[0] = 'т' if word[0] == 'н'
        word[-1] = 'е' if word[-1] == 'о'
      end
      anew_str_array.push(words.join(' '))
    end
    anew_str_array
  end
end
