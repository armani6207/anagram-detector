require 'pry'

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        ret_array = []
        array.each do |anagram|
            mod_word = @word.chars.sort
            mod_anagram = anagram.chars.sort
            if mod_word == mod_anagram
                ret_array << anagram
            end
        end
        ret_array
    end


end
