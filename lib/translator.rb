# require modules here
require 'yaml'
require 'pry' 
def load_library(file)
  emoticons = YAML.load_file(file)
  emot_hash = {}
  
  emot_hash["get_emoticon"] = {}
  emot_hash["get_meaning"] = {}
  
  emoticons.each do |english_word, emoti|
    emot_hash["get_emoticon"][emoticons_set.first] = emoticons_set.last 
    emot_hash["get_meaning"][emoticons_set.last] = english_word
  end
  emot_hash
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