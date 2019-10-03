def say_hello(first_name)
  puts "Bonjour #{first_name} !"
end

def ask_first_name()
puts "Quel est ton prenom"
print ">"
name = gets.chomp.to_s
return name
end

name = ask_first_name()
say_hello(name)
