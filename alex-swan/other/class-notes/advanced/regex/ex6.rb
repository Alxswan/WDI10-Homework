ARGF.each do |line|
	puts line if line =~ /[Ff]red.*[Ww]ilma/ || line =~ /fred.*wilma/
end