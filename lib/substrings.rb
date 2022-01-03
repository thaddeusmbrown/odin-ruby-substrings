# frozen_string_literal: true

require 'pry-byebug'

def substrings(phrase, dictionary)
  # split the incoming phrase to be searched through with dictionary
  phrase_array = phrase.downcase.split

  #binding.pry

  dictionary.reduce(Hash.new(0)) do |result, search_word|
    phrase_array.each do |word|
      if word.include?(search_word)
        result[search_word] += 1
      end
    end
    result
  end
end
