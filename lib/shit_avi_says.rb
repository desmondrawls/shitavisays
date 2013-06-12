class ShitAviSays
    #Any command Line options set are passed in as array argv
    # You cannot have arguments as CONSTANTS plus if it was 
    # ARGV it would clash with the built in ARGV.
    def initialize(argv=[""])
      puts "What's your name?"
      name = gets.chomp
      puts "Hello"
      puts name
    end

    def report
       puts @msg.to_s
    end
 end