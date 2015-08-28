db = File.new( 'database.txt', 'a+') #open in append mode and create if necessary

print "Would you like to add people to the database? (y/n): "
response = gets.chomp.downcase

while response == 'y'
	print "Enter name, age, gender (comma separated): "
	person = gets.chomp
	db.puts person

	print "Add another? (y/n): "
	response = gets.chomp.downcase

end

db.close

db = File.open( 'database.txt', 'r') #open in read mode

people = []

db.each do |entry|

	person_info  = entry.chomp.split(',') #takes person line and splits into an array with 3 parts
	person = {
		:name => person_info[0],
		:age => person_info[1],
		:gender => person_info[2]
	}
	def person.story
		"#{ self[:name].capitalize } identifies as #{ self[:gender]} and is #{ self[:age]} years old."

	end

	people << person
end

db.close

people.each do |person|
	# puts story(person)
	puts person.story
end

