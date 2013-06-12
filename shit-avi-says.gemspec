require 'rubygems'

SPEC = Gem::Specification.new do |s|
  s.name = "shit-avi-says"
  s.version = "0.1.3"
  s.author = "Ice Breakers"
  s.email = "adam.waxman@flatironschool.com"
  s.platform = Gem::Platform::RUBY
  s.description = "Shit Avi Says!"
  s.summary = "Post shit avi says on Tumblr through the command line"
  s.rubyforge_project = "shit-avi-says"
  s.homepage = "https://github.com/awaxman11/shitavisays-gem"
  s.files = ['bin/avi', 'lib/avi.rb']
  s.bindir = 'bin'
  s.executable = 'avi'
end