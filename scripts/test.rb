require 'simplecov'

SimpleCov.start

Dir.glob('../**/*_test.rb') do |file|
  require file
end
