# frozen_string_literal: true

def substrings(phrase, dictionary)
  # split the incoming phrase to be searched through with dictionary, ignore uppercase
  phrase_array = phrase.downcase.split

  # go through each word in the dictionary and see if it is a substring of each word in the target phrase
  dictionary.each_with_object(Hash.new(0)) do |search_word, result|
    phrase_array.each do |word|
      result[search_word] += 1 if word.include?(search_word)
    end
  end
end
