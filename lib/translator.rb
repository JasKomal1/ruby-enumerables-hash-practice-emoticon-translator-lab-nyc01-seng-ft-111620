# require modules here
require 'yaml'
require 'pry' 
def load_library
  # code goes here
end

def get_japanese_emoticon(file, emoticon)
  emot_hash = load_library(file)
  outpu = emot_hash["get_emoticon"][emoticon]
  if outpu == nil
    "Sorry, that emoticon was not found"
  end
  outpu
end

def get_english_meaning
  # code goes here
end