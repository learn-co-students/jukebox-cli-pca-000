def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |track, i|
    puts "#{i+1}. #{track}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def play(songs)
  prompt = gets.chomp
  number = prompt.to_i
  # number can't be larger than size of array
  if songs.include? prompt
    puts "Playing #{prompt}"
  elsif (0...songs.length).include? prompt.to_i-1
    puts "Playing #{songs[prompt.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def run(songs)
  loop do
    puts "Please enter a command:"

    command = gets.chomp
    case command
    when "help"
      help
    when "list"
      list
    when "play"
      play
    when "exit"
      exit_jukebox
      break
    else
      puts "Invalid input, please try again"
    end
  end
end
