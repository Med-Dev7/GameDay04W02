def signup()
  puts "Votre futur mot de passe !"
  print ">"
  pwd = gets.chomp.to_s
  return pwd
end


def login(pwd)
  puts "Votre login !"
  print ">"
  log = gets.chomp.to_s
  while pwd != log
    puts "erreur"
    log = gets.chomp.to_s
  end
  if pwd == log
    welcome_screen()
  end
end

def welcome_screen()
  puts "Bienvenu !"
end

def perform()
pwd = signup()
login(pwd)
end

perform()
