#!/usr/bin/env ruby


commArgs = ARGV

if (commArgs[0] != "-c" && commArgs[2] != "-f") || (commArgs[0] != "-f" && commArgs[2] != "-c")
	puts "Usage is karl_marble_hw9.rb [-c customerDataFolder] [-f dataFile]"
elsif commArgs[0] == "-h" || commArgs[0] == "--help"
	puts "Usage is karl_marble_hw9.rb [-c customerDataFolder] [-f dataFile]"
else
	puts "Usage is karl_marble_hw9.rb [-c customerDataFolder] [-f dataFile]"
end

puts = "Checking repository structure."

Dir.chdir("/home/student/")
if Dir.exist?(commArgs[1]) == false
	puts "Repository Root not found,"
	puts "Creating ..."
	Dir.mkdir(commArgs[1])
end

$i = 1

while $i < 13 do
	if $i < 10
		cspath="#{commArgs[1]}/0#{$i}"
		if Dir.exist?(cspath) == false
			puts "Customer data folder #{$i} is missing,"
			puts "Creating folder ..."
			Dir.mkdir(cspath)
		end
		$i +=1
	else
		cspath="#{commArgs[1]}/#{$i}"
		if Dir.exist?(cspath) == false
			puts "Customer data folder #{$i} is missing,"
			puts "Creating folder ..."
			Dir.mkdir(cspath)
		end
		$i +=1
	end
end

timestamp = `date +'%F'`
month = `date +'%m'`
newfile = "#{commArgs[3]}.#{timestamp}"

puts "#{newfile}"
puts "#{month}"

exit 0
