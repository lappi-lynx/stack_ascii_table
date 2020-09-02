BASE_PATH = './lib'

Dir["#{BASE_PATH}/types/*.rb"].each    { |file| require_relative file }
Dir["#{BASE_PATH}/ascii/*.rb"].each    { |file| require_relative file }
Dir["#{BASE_PATH}/services/*.rb"].each { |file| require_relative file }

begin
  require 'pry'
  require 'csv'
  require 'rspec'
rescue LoadError => e
  puts "#{e}. Installing..."
  # Installing missed gems
  system('gem install pry')
  system('gem install rspec')
  puts 'Installation was completed successfully. Please re-run the program'
  exit
end

csv_file = File.new(File.join(File.dirname(__FILE__), './spec/fixtures/extended_example.csv'))

puts TableGenerator.new(csv_file).call
