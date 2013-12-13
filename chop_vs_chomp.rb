# Ruby Chop vs Chomp

=begin
 When you receive user input from textareas or console input you may get some newline characters.
 One way to remove newline characters is the String#chop method, 
 it will remove any trailing newline or carriage return characters “\r\n”. But it’s tricky.
=end
# Because here it works like it’s suppose to.

puts "\r\n================ chop ==============="

full_name = "My Name is Manish\r\n"  
puts "Full Name : #{full_name}"

full_name.chop! # => "My Name is Manish"


# Now if you run chop and there are no newline characters.

puts full_name    #=> "My Name is Manish"
puts full_name.chop!  #=> "My Name is Manis"

# Disaster Strikes!


# That’s why there is chomp.

puts "\r\n================ chomp ==============="
full_name = "My Name is Manish\r\n"
 
puts full_name       #=> "My Name is Manish\r\n"

full_name.chomp!  #=> "My Name is Manish"
full_name.chomp!  #=> "My Name is Manish"
puts "Full Name : #{full_name}"

# So chomp is our recommended way of removing trailing newline characters.
