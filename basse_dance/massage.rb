song_num = 1
file = File.open('basse_dance.abc').readlines.each do |line|
  if line =~ /Q:/
    next
  elsif line =~/%/
    next
  else
    puts line
  end
end
