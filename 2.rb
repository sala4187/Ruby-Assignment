#(2)

def palindrome?(string)

	string = string.downcase.gsub(/\W/, '') # all lower case & removes any non-word caracter 
	string == string.reverse # checks if the string is a palindrome 
end

puts palindrome?("A man, a plan, a canal -- Panama")  # => true

puts palindrome?("Madam, I'm Adam!")                 # => true

puts palindrome?("Abracadabra")                     # => false (nil is also ok)


