require 'pry'
require_relative 'string_outputs'
require_relative 'menu'
require_relative 'mastermind'
require_relative 'generator'
class Runner
  attr_reader :activity

    def initialize
      @strings = StringOutputs.new
      @game = Gameplay.new
      @menu = Menu.new(@game)
      @generator = Generator.new
    end

    def run
      feedback = @menu.open
      message = feedback[0]
      signal = feedback[1]
      puts message

      until signal == :stop
        input = gets.chomp

        if @menu.active?
          feedback = @menu.execute(input)
        elsif @game.active?
          feedback = @game.execute(input)
        else
          feedback = ['broken', :broken]
        end

        message = feedback[0]
        signal = feedback[1]

        puts message
      end
    end
end

runner = Runner.new
runner.run
