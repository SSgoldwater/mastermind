require 'pry'


class Gameplay

  attr_accessor :mastercode, :false_eval

  def initialize
    @strings = StringOutputs.new
    @mastercode = 'rrgb'
    @active = false
  end

  def start_game
    @active = !@active
  end

  def active?
    @active

  end

  def execute(input)

    if input == @mastercode
      @strings.win

    else
      false_eval(input)
      "'#{input.upcase}' has #{@ce_num} correct elements with #{@cp_num} in the correct position, guess again!"

    end

  end

  def false_eval(input)
    @ce_num = 0
    @cp_num = 0
    @guess_ary = input.split('')
    @mcode_ary = @mastercode.split('')

    element_counter(input)
    position_counter(input)
  end

  def position_counter(input)

    comparison_ary = @guess_ary.zip(@mcode_ary)
    comparison_ary.each do |x, y|
      if x == y
        @cp_num += 1
      end
    end

  end

  def element_counter(input)
    guess_ary2 = @guess_ary.dup

    guess_ary2.each do
      @mcode_ary.each do |m|
        if guess_ary2[0] == m
          @ce_num += 1
        end
        guess_ary2.shift
      end
    end


  end





end


# @game = Mastermind.new
# @mastercode = @game.generate
#
# puts @mastercode.upcase!require 'pry'
# require_relative 'mastermind_str_outputs.rb'
# require_relative 'player_commands.rb'
