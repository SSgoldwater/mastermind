require 'minitest/autorun'
require 'minitest/pride'
require '/Users/Goldwater/Desktop/Development/mastermind/lib/mastermind.rb'

class MastermindTest < Minitest::Test
  attr_reader :mm

  def test_it_exists
    assert MastermindTest
  end

  def setup
    @mm = Mastermind.new
  end

  def test_it_generates_sequence
    mastercode = @mm.generate
    assert mastercode
  end

  def test_sequence_contains_string_of_4
    @mastercode = @mm.generate
    seq_length = @mastercode.length
    assert_equal 4, seq_length
  end


  def test_it_executes_false_input
    result = @mm.execute('nope')
    assert result.downcase.include?('again')
  end

  def test_false_execution_knows_0_correct_elements
    result = @mm.execute('nope')
    assert result.downcase.include?('0 correct')
  end

  def test_false_execution_knows_1_correct_elements
    result = @mm.execute('rope')
    assert result.downcase.include?('1 correct')
    result = @mm.execute('rgrr')
    assert result.downcase.include?('1 correct')
  end

  def test_false_execution_knows_3_correct_elements
    result = @mm.execute('rrge')
    assert result.downcase.include?('3 correct')
  end

  def test_it_knows_0_correct_positions
    result = @mm.execute('nope')
    assert result.downcase.include?('0 in the correct position')
  end

  def test_it_knows_1_correct_position
    result = @mm.execute('rope')
    assert result.downcase.include?('1 in the correct position')
  end

  def test_it_wins
    result = @mm.execute('rrgb')
    assert result.downcase.include?("win")
  end




end
