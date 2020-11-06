# require modules here
require 'yaml'
require 'pry' 
def load_library(file)
  
  
end

def get_japanese_emoticon(file, emoticon)
  emot_hash = load_library(file)
  outpu = emot_hash["get_emoticon"][emoticon]
  if outpu == nil
    "Sorry, that emoticon was not found"
  end
  outpu
end

def get_english_meaning(file, emoticon)
  emot_hash = load_library(file)
  outpu = emot_hash["get_meaning"][emoticon]
  if outpu == nil 
    "Sorry, that emoticon was not found"
  end 
  outpu 
end