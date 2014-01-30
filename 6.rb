#(6)

def glob_match(filenames, pattern)
	pattern.gsub!(/[\*\?\.]/, '*', '.', => '\.', '?' => '.')
	regex = 
