# (10a)

class String
	def method_missing(method_id)
		if method_id.to_s == "palindrome?"
                        word = self.downcase.gsub(/\W/, '')
                        word == word.reverse
                else
                        super
                end
        end
end
puts "foo".palindrome?
puts "taco cat".palindrome?


#(10b)

module Enumerable
        def method_missing(method_id)
                if method_id.to_s == "palindrome?" 
                        if self.kind_of? Array 
                                self == self.reverse
                        else
                                self.to_a.palindrome?
                        end
                else
                        super
                end
        end
end

puts ["a", "b", "c", "b", "a"].palindrome? # true
puts [1,2,3,4,3,2].palindrome? # false
puts pvalue = {"hello"=> "world"}.palindrome?
puts (1..2).palindrome?
