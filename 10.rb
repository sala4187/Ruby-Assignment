# (10a)

class String
	def palindrome?
		word = self.downcase.gsub(/\W/, '')
                word == word.reverse    
	end
end

puts "10(a)"
puts "foo".palindrome?
puts "taco cat".palindrome?


#(10b)

module Enumerable
	def palindrome?
		if self.is_a? Array  # if array...
			self == self.reverse
		else
                        self.to_a.palindrome? # else put into array then check if palindrome
                end  
        end
end

puts "10(b)"
puts ["a", "b", "c", "b", "a"].palindrome? # true
puts [1,2,3,4,3,2,1].palindrome? # true
puts a = {"hello"=> "world"}.palindrome?
puts (1..2).palindrome?
