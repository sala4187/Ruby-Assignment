# (5)  Anagrams

def combine_anagrams(words)

	words.group_by {|w| w.downcase.chars.sort.join}.values
	# change words to individual characters to sort, then join, then use values to put into array

end

test = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
print combine_anagrams(test)

# Example test case:

# input: ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']

# output: [ ["cars", "racs", "scar"],

#           ["four"],

#           ["for"],

#           ["potatoes"],

#           ["creams", "scream"] ]
