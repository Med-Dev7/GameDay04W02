def isPair()
puts "Combien d'etage voulez vous?"
print ">"
stage = gets.chomp.to_i
  if stage.even?
    puts "Donne moi un nombre impair"
    print ">"
    stage = gets.chomp.to_i
  end
  return stage
end



def half_pyramid()

  number = 0;



  if number > 1 || number < 25
    puts "Tapez un nombre entre 1 et 25"
    number = gets.chomp.to_i
    array = Array.new(number+1){Array.new()}
    for i in 1..number
      for y in 0..number
        if y < (number - i )
          array[i][y] = " "
        elsif y > (number - i)
          array[i][y] = "#"
        end
        print array[i][y];
      end
      puts ""
    end
  end
  puts "Continue tapez (y/n)"
  print">"
  str = gets.chomp.to_s
  if str == "y"
    return 1
  elsif str = "n"
    return 5
  else
    puts "Erreur tapez la bonne lettre"
  end
end

def full_pyramid(stage)
size = stage * 2
array = Array.new(stage){Array.new(size)}
  for i in (0..stage- 1)
    for y in (0..size-1)
        if y  >= size/2 - i && y <= size/2 + i
          array[i][y] = "#"
        else
          array[i][y] = " "
        end
        print array[i][y]
      end
    puts ""
  end
  puts "Continue tapez (y/n)"
  print">"
  str = gets.chomp.to_s
  if str == "y"
    return 2
  elsif str = "n"
    return 5
  else
    puts "Erreur tapez la bonne lettre"
  end
end


def wtf_pyramid(stage)

array = Array.new(stage){Array.new(){" "}}
n = -stage /2 +1
  for i in (0..stage - 1)
    for y in (0..stage-1)
      # if coupe 1 cran au dessus de la moitier des etages
      if i >= 0 && i < stage/2
        # prend l'intervalle entre la colonne de gauche vers la 1 cran celle du milieu
        if y  >= stage/2 - i  && y<= stage/2 + i
          array[i][y] = "#"
        else
          array[i][y] = " "
        end
      # elsif coupe 1 cran en dessous de la moitier des etages
    elsif i > stage/2 && i <= stage
        if y >= 0 + n  && y <= stage - n - 1
          array[i][y] = "#"
        else
          array[i][y] = " "
        end
    else
        array[i][y] = "#"
      end
      print array[i][y]
    end
    n += 1
    puts ""
  end

  puts "Continue tapez (y/n)"
  print">"
  str = gets.chomp.to_s
  if str == "y"
    return 3
  elsif str = "n"
    return 5
  else
    puts "Erreur tapez la bonne lettre"
  end
end

def perform()
int = 0
  while true
    if int == 0
      puts "Tapez votre nombre: "
      puts " 1 - lancez half_pyramid"
      puts " 2 - lancez full_pyramide"
      puts " 3 - lancez wtf_pyramid"
      puts " 4 - Quit"
      print ">"
      int = gets.chomp.to_i
    elsif int == 1
      int = half_pyramid()
    elsif int == 2
      stage = isPair()
      puts int

      int = full_pyramid(stage)
      puts int
    elsif int == 3
      stage = isPair()
      int = wtf_pyramid(stage)

    elsif int == 4
      puts "En revoir est a bientot"
      return
    elsif int == 5
      int = 0
    else
      puts "ERREUR tapez le bon nombre: "
      int = 0;
    end

  end
end


perform( )
