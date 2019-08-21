  
require "yaml"
lib = YAML.load_file('./lib/emoticons.yml')
  
emot_lib = {
    "get_meaning": {},
    "get_emoticon": {}
  }

emot_lib[:get_meaning] = {lib.keys[0] => lib.values[0][1]}
#p emot_lib[:get_meaning] == {}
#p emot_lib.keys[0] == :get_meaning
#p lib.keys[0]
#p lib.values[0][1]


# note: key == lib.keys[0] and value[0] = lib.values[0][1]
lib.each do |key, value|
  emot_lib.keys[0] = {key => value[0]}
  
end

p emot_lib




