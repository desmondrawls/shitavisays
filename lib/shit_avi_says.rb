require 'tumblr'

class ShitAviSays
    #Any command Line options set are passed in as array argv
    # You cannot have arguments as CONSTANTS plus if it was 
    # ARGV it would clash with the built in ARGV.
#     def authorize(argv[""])


# end
    def authorize
        puts "What's the almighty consumer key?"
        ARGV.clear
        consumer_key = gets.chomp

        puts "What's the almighty secret key?"
        consumer_secret = gets.chomp

        # path = File.expand_path("~")

        # File.open("#{path}/.tumblr", 'w') do |file|
        #   file.write("---
        #     consumer_key: #{consumer_key}
        #     consumer_secret: #{consumer_secret}
        #     token: IJQjtsdHUjv0yYdKDdEE9Kio82VJ8IsDZYtyAEgtI1aHHW3AZb
        #     token_secret: xh6nyeHz7LJc6GLg3OEUm2wrg4EXlvVBzRKaZ5OO2QjdjLjGuP")
        # end

        File.open("cache", 'w') do |file|
          file.write("configured")
        end
    end
    
    def initialize(argv)
        if argv[0] == "config"

            authorize     

        else
            File.open("cache") do |file|
                while line = file.gets
                    if line == "configured"
                        puts "What shit did Avi say??"

                        command = gets.chomp

                        if command
                          exec("tumblr post '#{command}' --host=http://shitavisays.tumblr.com/")          
                        end
                    else
                        puts "please configure the keys - use shitavisays config on a fresh prompt"
                    end
                end
            end
        end
    end





      #   puts "What shit did Avi say??"

      #   post_array = []
      #   command = gets.chomp

      #   if command
      #     exec("tumblr post '#{command}' --host=http://shitavisays.tumblr.com/")          
      #   end

 end