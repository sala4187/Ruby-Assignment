#(6) credit - rubular, worked with friend Fletcher

def glob_match(filenames, pattern)
	pattern.gsub!(/[\*\.]/, '*' => '.*', '.' => '\.') # using "!" to modify variable with substitution
	if pattern.include? "?" # if there is a "?" in the pattern
    		split_pattern = pattern.split('?') # spilt pattern at "?"
		split_pattern.first[-1] = ".*" # access the last element of the first part of the split and declare optional
		split_pattern[1] ||= '' # if there is nothing after question mark, add blank space instead of nil
		pattern = split_pattern[0] + split_pattern[1]
	end	
		
	regex = Regexp.new(pattern)
	filenames.select do |file|
		file =~ regex # check if file is equal to our regex 
	end
end

p glob_match(['part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~'], '*part*rb?*')

# ==> should return all
