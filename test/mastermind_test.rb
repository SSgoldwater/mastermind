require 'minitest/autorun'
require 'minitest/pride'
require '/Users/Goldwater/Desktop/Development/mastermind/lib/mastermind.rb'

class GameplayTest < Minitest::Test
  attr_reader :game

  def setup
    @game = Gameplay.new

  end

  def test_it_exists
    assert GameplayTest
  end

  def test_it_executes_false_input
    result = @game.execute('nope')
    assert result.downcase.include?('again')
  end

  def test_false_execution_knows_0_correct_elements
    result = @game.execute('nope')
    assert result.downcase.include?('0 correct')
  end

  def test_false_execution_knows_1_correct_elements
    result = @game.execute('rope')
    assert result.downcase.include?('1 correct')
    result = @game.execute('rgrr')
    assert result.downcase.include?('1 correct')
  end

  def test_false_execution_knows_3_correct_elements
    result = @game.execute('rrge')
    assert result.downcase.include?('3 correct')
  end

  def test_it_knows_0_correct_positions
    result = @game.execute('nope')
    assert result.downcase.include?('0 in the correct position')
  end

  def test_it_knows_1_correct_position
    result = @game.execute('rope')
    assert result.downcase.include?('1 in the correct position')
  end

  def test_it_knows_2_colors_and_1_position
    result = @game.execute('rbrr')
    assert result.downcase.include?('2 correct' && '1 in the correct position')
  end

  def test_it_wins
    result = @game.execute('rrgb')
    assert result.downcase.include?("win")
  end

  def test_gameplay_is_inactive_upon_file_opening
    skip
    runner = Runner.new
    runner.run
    gamplay_activity = @game.active?
    assert_equal "inactive", gameplay_activity

  end


end
