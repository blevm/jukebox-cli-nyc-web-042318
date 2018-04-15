require "pry"

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
  puts "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end

def list(songs)
  list_of_songs = []
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def play(songs)
  puts "Please enter a song name or number:"
  users_input = gets.chomp
  if users_input == Integer
    if users_input.between?(1,9)
      puts "Playing #{songs[users_input.to_i-1]}"
    end
  elsif songs.include?(users_input.to_s.downcase)
    puts "Playing #{songs[users_input]}"
  #else
    #puts "Invalid input, please try again"
  end
end

def run(songs)

end
