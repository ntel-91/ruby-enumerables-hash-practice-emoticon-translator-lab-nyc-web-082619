  
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
  emot_lib[emot_lib.keys[0]] = {key => value[0]}
end

#p emot_lib[:get_emoticon][lib.values[0]] = 
p emot_lib[lib.keys[0]][1]

#lib.each do |key, value|
#  emot_lib[:get_emoticon][value[0]] = lib[key][1]
#  emot_lib[:get_meaning][value[1]] = key 
#end

#p emot_lib[:get_emoticon][lib.values[0][1]]
#p lib.values[0][1]
#p lib[lib.keys[0]][1]




