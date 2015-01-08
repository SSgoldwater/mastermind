require 'pry'
require_relative 'string_outputs'
require_relative 'menu'
require_relative 'mastermind'
require_relative 'generator'



class Runner

  attr_reader :activity

  def initialize
    @strings = StringOutputs.new
    @menu = Menu.new
    @game = Gameplay.new
    @generator = Generator.new


  end

  def run
    signal = :go
    




  end


end
#
# runner = Runner.new
# runner.run
