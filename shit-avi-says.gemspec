require 'rubygems'

SPEC = Gem::Specification.new do |s|
  s.name = "shit-avi-says"
  s.version = "0.2.3"
  s.author = "Ice Breakers"
  s.email = "adam.waxman@flatironschool.com"
  s.platform = Gem::Platform::RUBY
  s.description = "Shit Avi Says!"
  s.summary = "Post shit avi says on Tumblr through the command line"
  s.rubyforge_project = "shit-avi-says"
  s.homepage = "https://github.com/awaxman11/shitavisays-gem"
  s.files = ['notabin/shitavisays', 'lib/shit_avi_says.rb']
  s.bindir = './bin'
  s.executable = 'shitavisays'
  s.add_dependency('tumblr-rb', '>=2.1.1')
end