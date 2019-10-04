songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  str = <<~HEREDOC
    I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program
  HEREDOC
  puts str
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  numbers = ["1", "2", "3", "4", "5", "6", "7"]
  if songs.include?(response)
    puts "Playing " + response
  elsif numbers.include?(response)
    puts "Playing " + songs[response.to_i - 1]
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts (index + 1).to_s + ". " + song
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  command = ""
  while command
    puts "Please enter a command:"
    command = gets.strip.downcase
    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
