def substrings(string, array) # rubocop:disable Metrics/MethodLength
  result = {}
  array.each do |array_word|
    string.downcase.split.to_a.each do |string_word|
      if string_word.include?(array_word)
        if result.key?(array_word)
          result[array_word] += 1
        else
          result[array_word] = 1
        end
      end
    end
  end
  p result
end

dictionary = %w[below down go going horn how howdy it i low own part partner
                sit below]
puts 'Please enter a word or sentence'
sentence = "Howdy partner, sit down! How's it going?"

substrings(sentence, dictionary)
