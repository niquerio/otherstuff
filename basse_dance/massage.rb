def print_notes(notes)
  full_lines = notes.size/4 
  1.upto(full_lines) do |row|
    puts "#{notes[row*1-1]} #{notes[row*2-1]} #{notes[row*3-1]} #{notes[row*4-1]}"    
  end
  last_row = ''
  full_lines*4.upto(notes.size) do |i|
    last_row = last_row + "#{notes[i]} "
  end 
  puts last_row
end

flag = false
song_num = 1
notes = []
file = File.open('basse_dance.abc').readlines.each do |line|
  flag = true if line =~/X: 26/
  unless flag
    puts line
  else
    if line =~ /^X:/
      print_notes(notes)
      notes.clear
    elsif line.count("|") == 1
      notes.push(line.strip)
    else 
      puts line
    end
  end
end
puts print_notes(notes)

