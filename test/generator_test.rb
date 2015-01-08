require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/generator.rb'

class GeneratorTest < MiniTest::Test
  def setup
    @game = Gameplay.new
    @generator = Generator.new
  end

  def test_it_generates_sequence
    mastercode = @generator.generate
    assert mastercode
  end

  def test_sequence_contains_string_of_4
    @mastercode = @generator.generate
    seq_length = @mastercode.length
    assert_equal 4, seq_length
  end

end
