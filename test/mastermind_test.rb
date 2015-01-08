require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/mastermind.rb'

class GameplayTest < Minitest::Test
  attr_reader :game

  def setup
    @game = Gameplay.new
    @strings = StringOutputs.new
  end

  def test_it_exists
    assert GameplayTest
  end

  def test_it_executes_false_input
    result = @game.execute('nope')
    message = result[0]
    assert message.downcase.include?('again')
  end

  def test_false_execution_knows_0_correct_elements
    result = @game.execute('nope')
    message = result[0]
    assert message.downcase.include?('0 correct')
  end

  def test_false_execution_knows_1_correct_elements
    result = @game.execute('rope')
    message = result[0]
    assert message.downcase.include?('1 correct')
    result = @game.execute('rgrr')
    message = result[0]
    assert message.downcase.include?('1 correct')
  end

  def test_false_execution_knows_3_correct_elements
    result = @game.execute('rrge')
    message = result[0]
    assert message.downcase.include?('3 correct')
  end

  def test_it_knows_0_correct_positions
    result = @game.execute('nope')
    message = result[0]
    assert message.downcase.include?('0 in the correct position')
  end

  def test_it_knows_1_correct_position
    result = @game.execute('rope')
    message = result[0]
    assert message.downcase.include?('1 in the correct position')
  end

  def test_it_knows_2_colors_and_1_position
    result = @game.execute('rbrr')
    message = result[0]
    assert message.downcase.include?('2 correct' && '1 in the correct position')
  end

  def test_it_wins
    result = @game.execute('rrgb')
    message = result[0]
    signal = result[1]
    assert message.downcase.include?("win")
    assert_equal :stop, signal
  end

  def test_gameplay_is_inactive_upon_file_opening
    refute @game.active?
  end

  def test_gameplay_initializes_when_play_called
    refute @game.active?
    @game.start_game
    assert @game.active?
  end
end
