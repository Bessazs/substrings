def substrings(sentence, dictionary) # rubocop:disable Metrics/MethodLength
  result = {}
  dictionary.each do |dict_word|
    sentence.downcase.split.each do |sentence_word|
      if sentence_word.include?(dict_word)
        if result.key?(dict_word)
          result[dict_word] += 1
        else
          result[dict_word] = 1
        end
      end
    end
  end
  result
end

dictionary = %w[below down go going horn how howdy it i low own part partner
                sit below]
puts 'Please enter a word or sentence'
sentence = gets.chomp

puts substrings(sentence, dictionary)
