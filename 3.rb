#(3)
#credit - rubular, 

def count_words(string)

    words = string.downcase.split(/\W+/) # split string at any non word character, ignore case
    word_count = Hash.new(0) # initialize hash
    words.each { |word| word_count[word] += 1} 
    word_count 

end

puts count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}

puts count_words "Doo bee doo bee doo"
# => {'doo' => 3, 'bee' => 2}
