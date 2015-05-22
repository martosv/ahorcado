class Hangman < ActiveRecord::Base
	def rand_word
		index_object = self.length - 1
		self.rand(index_object)	
	end

	def show_lines_word 
		"_ "*self.length	
	end

	def check_letter letter
		array_word_letters = self.split("")
		array_show_lines_word = show_lines_word.split("")
		array_word_letters.each_with_index do |index, word_letter|
			if letter.downcase == word_letter.downcase 
				array_show_lines_word[index] = word_letter
			else
				array_show_lines_word
			end
		end
	end
end
