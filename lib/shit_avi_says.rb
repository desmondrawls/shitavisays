require 'tumblr'

class ShitAviSays
    #Any command Line options set are passed in as array argv
    # You cannot have arguments as CONSTANTS plus if it was 
    # ARGV it would clash with the built in ARGV.
    
    def initialize(argv=[""])
      # @client = Tumblr::Client.new("shitavisays.tumblr.com")
        path = File.expand_path("~")
        File.open("#{path}/.tumblr", 'w') do |file|
          file.write("---
        consumer_key: oV1ifzUQgrdGHrQolyL2slFBmEKLsa1zhlHYy0eHHR9xCfryyN
        consumer_secret: oBPJjiaP5WaHDulIqX5A6Otg731uHbi6vqq1SRofqwuoBQCu3T
        token: IJQjtsdHUjv0yYdKDdEE9Kio82VJ8IsDZYtyAEgtI1aHHW3AZb
        token_secret: xh6nyeHz7LJc6GLg3OEUm2wrg4EXlvVBzRKaZ5OO2QjdjLjGuP")
        end

        puts "What shit did Avi say??"

        post_array = []
        command = gets.chomp

        if command
          exec("tumblr post '#{command}' --host=http://shitavisays.tumblr.com/")          
        end
    end

 end