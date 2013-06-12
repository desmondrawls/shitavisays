require 'tumblr'

puts "What shit did Avi say??"

post_array = []
command = gets.chomp


if command
  exec("tumblr post '#{command}' --host=http://shitavisays.tumblr.com/")
end

