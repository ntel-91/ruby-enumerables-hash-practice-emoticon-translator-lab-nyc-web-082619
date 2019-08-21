# require modules here

def load_library(file_path)
  require "yaml"
  lib = YAML.load_file(file_path)
  
  emot_lib = {
    "get_meaning": {},
    "get_emoticon": {}
  }
      
  emot_lib.each do |key, value|
   new_hash['get_emoticon'][value[0]] = emoticons[key][1]
    new_hash['get_meaning'][value[1]] = key
  end 

#  emot_lib[emot_lib.keys[0]] = {lib.keys[0] => lib[lib.keys[0]][1]}
  emot_lib
end

p load_library('emoticons.yml')

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end