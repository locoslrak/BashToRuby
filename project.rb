#!/usr/bin/env ruby

require 'date'


commArgs = ARGV
date = DateTime.now()
timestamp = date.strftime('%F')
month = date.strftime('%m')


if ( commArgs[0] != "-c" && commArgs[2] != "-f" ) && ( commArgs[0] != "-f" && commArgs[2] != "-c" )
	puts "Usage is karl_marble_hw9.rb [-c customerDataFolder] [-f dataFile]"
	exit 1
elsif ( commArgs[0] == "-h" || commArgs[0] == "--help" )
	puts "Usage is karl_marble_hw9.rb [-c customerDataFolder] [-f dataFile]"
	exit 1
end


if commArgs[0] == "-c"
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

	folder = "#{commArgs[1]}"
	newfile = "#{commArgs[3]}.#{timestamp}"
	
	puts "Pulling file from customer server."
	`scp km54218@icarus.cs.weber.edu:/home/hvalle/submit/cs3030/files/#{commArgs[3]} ~/#{folder}/#{month}/#{newfile}`
	if File.exist?(File.expand_path("~/#{folder}/#{month}/#{newfile}"))
		puts "File Transfered to ~/#{folder}/#{month}/#{newfile}"
	else
		puts "File did not successfully transfer."
	end
else
	Dir.chdir("/home/student/")
	if Dir.exist?(commArgs[3]) == false
		puts "Repository Root not found,"
		puts "Creating ..."
		Dir.mkdir(commArgs[3])
	end

	$i = 1

	while $i < 13 do
		if $i < 10
			cspath="#{commArgs[3]}/0#{$i}"
			if Dir.exist?(cspath) == false
				puts "Customer data folder #{$i} is missing,"
				puts "Creating folder ..."
				Dir.mkdir(cspath)
			end
			$i +=1
		else
			cspath="#{commArgs[3]}/#{$i}"
			if Dir.exist?(cspath) == false
				puts "Customer data folder #{$i} is missing,"
				puts "Creating folder ..."
				Dir.mkdir(cspath)
			end
			$i +=1
		end
	end

	folder = "#{commArgs[3]}"
	newfile = "#{commArgs[1]}.#{timestamp}"

	puts "Pulling file from customer server."
	`scp km54218@icarus.cs.weber.edu:/home/hvalle/submit/cs3030/files/#{commArgs[1]} ~/#{folder}/#{month}/#{newfile}`
	if File.exist?(File.expand_path("~/#{folder}/#{month}/#{newfile}"))
		puts "File Transfered to ~/#{folder}/#{month}/#{newfile}"
	else
		puts "File did not successfully transfer."
	end
end


exit 0
