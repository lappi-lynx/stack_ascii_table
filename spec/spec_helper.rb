# NOTE: This does not work for some reason:
# Dir[File.join(__dir__, 'lib', 'types', '*.rb')].each    { |file| require_relative file }
# Dir[File.join(__dir__, 'lib', 'ascii', '*.rb')].each    { |file| require_relative file }
# Dir[File.join(__dir__, 'lib', 'services', '*.rb')].each { |file| require_relative file }
require_relative '../lib/types/base.rb'
require_relative '../lib/types/int.rb'
require_relative '../lib/types/str.rb'
require_relative '../lib/types/money.rb'

require_relative '../lib/ascii/table.rb'
require_relative '../lib/ascii/row.rb'

require_relative '../lib/services/row_presenter.rb'
require_relative '../lib/services/row_generator.rb'
require_relative '../lib/services/table_presenter.rb'
require_relative '../lib/services/table_generator.rb'


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
