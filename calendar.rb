Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

require './lib/events'


database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['development']
ActiveRecord::Base.establish_connection(development_configuration)


def main_menu

end


def prompt(question)
  puts question
  gets.chomp
end
