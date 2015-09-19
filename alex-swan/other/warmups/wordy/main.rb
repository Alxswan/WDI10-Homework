# Wordy Addition
# Write a program that takes a word problem in the format:

# What is 5 plus 13?
# and returns the answer as an integer.

# The program should handle large numbers and negative numbers.

# Use the tests to drive your solution by deleting the skip in one test at a time.



def wordy(string)
	numbers = /\d/.match(string)
	puts numbers
	require 'pry'
	binding.pry
end

wordy("this is 1 and 2")