# (5)  Anagrams

def combine_anagrams(words)

    words.group_by {|i| i.downcase.chars.sort.join}.values

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

# Hint: You can quickly tell if two words are anagrams by sorting their letters, keeping in mind that upper vs. lowercase doesn't matter.
