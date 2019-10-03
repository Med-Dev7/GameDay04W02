def game()
dice = [1,2,3,4,5,6]
steps = 0
  while steps < 10
    puts "lancez un des (y/n)"
    play = gets.chomp.to_s
    if play == "y"
      i = dice.sample

      if i == 5 || i == 6
        puts "tu vien d'avancer sur la marche#{steps + 1} et tu etais sur la marche #{steps}"
        steps += 1
      elsif i == 1
         if steps <= 0
           puts "tu viens d'avancer sur la marche #{steps} et tu etais sur la marche #{steps}"
         else
           puts "tu viens d'avancer sur la marche #{steps - 1} et tu etais sur la marche #{steps}"
            steps -= 1
         end
      elsif i == 2 || i == 3 || i == 4
        puts "tu viens de rester sur la marche#{steps}"
      else
        puts "Tu es a la marche 0"
      end

    elsif play == "n"
      steps = 10
      puts "A Bientot !"
    else
      puts "Erreur retapez"
    end

  end
  if steps == 10
    puts "Vous avez gagnez !"
  end
  puts "Recommencer tapez (y/n)"
  print">"
  str = gets.chomp.to_s
  if str == "y"
    return 1
  elsif str == "n"
    return 4
  else
    puts "Erreur tapez la bonne lettre"
  end
end

def average_finish_time()
dice = [1,2,3,4,5,6]
games = 0
steps = 0
try = 0
  while games < 100
    i = 0
    steps = 0
    # try = 0
    while steps < 10
        i = dice.sample


        if i == 5 || i == 6
          steps += 1
          puts "tu vien d'avancer sur la marche #{steps + 1} et tu etais sur la marche #{steps}"
        elsif i == 1
          if steps <= 0
            puts "tu viens d'avancer sur la marche #{steps} et tu etais sur la marche #{steps}"
          else
            puts "tu viens d'avancer sur la marche #{steps - 1} et tu etais sur la marche #{steps}"
             steps -= 1
          end
        elsif i == 2 || i == 3 || i == 4
          puts "tu vien est rester sur place a la marche #{steps}"
        else
          puts "Tu es a la marche 0"
        end
        try += 1
    end
    games += 1
  end
  puts "la moyenne est de   #{100 - (try.to_f/100)} partie gagner sur #{games}"
  puts "Recommencer tapez (y/n)"
  print">"
  str = gets.chomp.to_s

    if str == "y"
      return 2
    elsif str == "n"
      return 4

  end
end




def perform()
  int = 0
while true
    if int == 0
      puts "Tapez votre nombre: "
      puts " 1 - Game Steps"
      puts " 2 - Statistic of win"
      puts " 3 - Quit"
      print ">"
      int = gets.chomp.to_i

    elsif int == 1
      int = game()
    elsif int == 2
      int = average_finish_time()
      puts "average #{int}"
    elsif int == 3
      puts "En revoir est a bientot"
      return
    elsif int == 4
      int = 0
    else
      puts "ERREUR tapez le bon nombre: "
      int = 0
    end
  end
end
perform
