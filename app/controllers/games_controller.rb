class GamesController < ApplicationController
  require 'json'
  require 'open-uri'

def new
  @letters = []
  @letters += Array.new(10) { (('A'..'Z').to_a).sample }
  @letters.shuffle!
  # raise
end

def score
word = params[:word]
letters = params[:letters]
url = "https://wagon-dictionary.herokuapp.com/#{word}"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)
end

end
# shuffle
