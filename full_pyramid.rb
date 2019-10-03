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
end

def perform()
stage = isPair()
pyramid(stage)
end

perform( )
