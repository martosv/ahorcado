class HangmenController < ApplicationController
	def index
        @hangmen = Hangman.all
        @hangman = @hangmen[rand_word]
        @word = @hangman.word
        @show_letter = @word.show_lines_word 
        binding.pry
        @checked_word = @word.check_letter
    end 
end
