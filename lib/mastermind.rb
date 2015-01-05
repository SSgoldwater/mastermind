require 'pry'
# require_relative 'mastermind_str_outputs.rb'
# require_relative 'player_commands.rb'

class Mastermind

  attr_accessor :mastercode, :false_eval

  def initialize
    @mastercode = 'rrgb'
  end


  def generate
    @mastercode = []
    palate = ['r','g','b','y']

    4.times do
      @mastercode << palate.sample
    end

    @mastercode = @mastercode.join

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





  def execute(input)

    if input == @mastercode
      "You win!"
    else
    false_eval(input)
     "'#{input.upcase}' has #{@ce_num} correct elements with #{@cp_num} in the correct position, guess again!"

    end

  end
end


# @mm = Mastermind.new
# @mastercode = @mm.generate
#
# puts @mastercode.upcase!
