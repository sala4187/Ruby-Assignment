# (9) — Currency conversion.  

class Numeric
@@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
	def method_missing(diff_currency)
   		singular_currency = diff_currency.to_s.gsub( /s$/, '') # remove last s to define singular currency
   		if @@currencies.has_key?(singular_currency) # returns true if given key is present
     			self * @@currencies[singular_currency]
  		else
     			super # calls method of parent class if it exists
  		end

 	end

	def in(currency)
		singular_currency = currency.to_s.gsub( /s$/, '') # remove last s
    		if @@currencies.has_key?(singular_currency)
      			self / @@currencies[singular_currency]
    		else
      			super
    		end
	end	

end

p 5.dollars.in(:euros)
p 10.euros.in(:rupees)
p 1.euro.in(:rupees)
 
