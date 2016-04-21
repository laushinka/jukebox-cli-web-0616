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
    puts "I accept the following commands: "
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.map.with_index do |title, index|
        puts "#{index + 1}. #{title}"
    end
end

# If the user's response is a valid song number or song name,
# the play method should puts out: "Playing <song name>"
# Otherwise, it should puts out: "Invalid input, please try again"
def play(songs)
    puts "Please enter a song name or number:"
    response = gets.chomp
    if songs.include?(response)
        puts "Playing #{response}"
    elsif response.to_i.to_s == response && (1..songs.length).include?(response.to_i)
        puts "Playing #{songs[response.to_i - 1]}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

# Keep program running as long as user input is not "exit"
def run(songs)
    help

    while true
        puts "Please enter a command: "
        command = gets.chomp
        case command
        when "list"
            list(songs)
        when "play"
            play(songs)
        when "help"
            help
        when "exit"
            exit_jukebox
            break
        end
    end
end
