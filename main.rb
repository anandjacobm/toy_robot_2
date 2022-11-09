# main module, Starting point of the application
Dir['lib/*.rb'].each { |file| require_relative file }
Dir['lib/outputters/*.rb'].each { |file| require_relative file }
Dir['lib/inputters/*.rb'].each { |file| require_relative file }
require 'yaml'
module Main

  # table dimensions from config file
  table_dimensions =  YAML.load(File.read('./config.yml'))

  # initializing objects
  table = Lib::Table.new(table_dimensions['table_x'], table_dimensions['table_y'])
  face = Lib::Face.new
  robot = Lib::Robot.new(face)
  outputter = Lib::Outputters::CliOutputter.new
  inputter = Lib::Inputters::CliInputter.new
  parser = Lib::ParseInput.new

  # infinite loop to get input and process it
  loop do

    outputter.instruction_message(Lib::Command::COMMANDS_LIST)

    input = inputter.input

    abort('Exiting Application!!!!') if input == 'Q'

    # changing the input to desired format and checking if it is valid command
    command, args = parser.parse(input)
    args[:outputter] = outputter
    Lib::Command.to(command, robot, table, args).process

  rescue StandardError => e
    puts "\n#{e.message}"
  end
end
