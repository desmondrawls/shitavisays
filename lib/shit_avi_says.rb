require 'tumblr'

class ShitAviSays
    #Any command Line options set are passed in as array argv
    # You cannot have arguments as CONSTANTS plus if it was 
    # ARGV it would clash with the built in ARGV.
    
    def initialize(argv=[""])
      # @client = Tumblr::Client.new("shitavisays.tumblr.com")
        puts "What shit did Avi say??"

        post_array = []
        command = gets.chomp

        if command
          exec("tumblr post '#{command}' --host=http://shitavisays.tumblr.com/")          
        end
    end

 end