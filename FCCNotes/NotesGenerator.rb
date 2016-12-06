# Creating a note template for FCC notes

#Creating the time variable to reference in the post
t = Time.now
datestamp = t.strftime("%F")


#requesting user input for filename
puts "Please enter the beginning  lesson number"
beg_lesson = gets.to_i

puts "Please enter the ending lesson number"
end_lesson = gets.to_i

# Creating a number to loop through 
lessons = end_lesson - beg_lesson
ctr = beg_lesson 

#Creating new file with neccessary filename and heading
new_file = File.new("FFCNotes-#{datestamp}-Lessons#{beg_lesson}-#{end_lesson}.md", "a")

new_file.puts("")

new_file.puts("# FCC Notes Lessons#{beg_lesson}-#{end_lesson}")

new_file.puts("")
new_file.puts("")

new_file.puts("## #{datestamp}")

new_file.puts("")
new_file.puts("")



lessons.times do 

	new_file.puts("***")
	new_file.puts("")
	new_file.puts("#### #{ctr}: ")
	new_file.puts("")
	new_file.puts("* ")
	new_file.puts("")
	new_file.puts("")
	new_file.puts("### Code: ")
	new_file.puts("")
	new_file.puts("```Javascript")
	new_file.puts("")
	new_file.puts("")
	new_file.puts("")
	new_file.puts("```")
	new_file.puts("")
	new_file.puts("***")

	ctr += 1
end



new_file.close
