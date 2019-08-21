# require modules here

def load_library(file_path)
  require "yaml"
  lib = YAML.load_file(file_path)
  
  emot_lib = {
    "get_meaning": {},
    "get_emoticon": {}
  }
      
  lib.each do |key, value|
    emot_lib[:get_emoticon][value[0]] = lib[key][1]
    emot_lib[:get_meaning][value[1]] = key
  end 

  emot_lib
end

p load_library('emoticons.yml')

def get_japanese_emoticon(file_path, eng_emot)
  emoticon = load_library(file_path)[:get_emoticon][eng_emot]
  if emoticon 
    emoticon
  else "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, jap_emot)
  emoticon = load_library(file_path)[:get_meaning][jap_emot]
  
end