# input variables
name = ""
years = 0
MONTHS_PER_YEAR = 12 # a constant
 
# output variable
months = 0
 
# processing
print "What is your name? "
name = gets
 
print "How many years old are you? "
years = gets
 
months = years * MONTHS_PER_YEAR

puts "#{name}, at #{years} years old, "\
"you are #{months} months old."