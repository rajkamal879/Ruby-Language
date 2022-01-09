# line break does not work with single quotes
puts "Hello\nWorld"
puts 'Hello\nWorld' # prints Hello\nWorld

# string interpplation does not worl with single quotes
phrase = "Hello world"
puts "#{phrase}"
puts '#{phrase}' # prints #{phrase}
