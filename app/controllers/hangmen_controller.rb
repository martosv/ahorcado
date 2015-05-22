class HangmenController < ApplicationController
	def index
        @hangmen = Hangman.all
    end 
end
