require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/menu.rb'
require_relative '../lib/runner.rb'

class MenuTest < MiniTest::Test
  def setup
    game = Gameplay.new
    @menu = Menu.new(game)
  end

  def test_it_exists
    assert @menu
  end

  def test_menu_is_active_upon_file_opening
    assert @menu.active?
  end

  def test_menu_deactivates_for_gameplay
    @menu.play
    refute @menu.active?
  end

  def test_menu_prints_welcome_message
    feedback = @menu.open
    message = feedback[0]
    assert message.downcase.include?('welcome')
  end

  def test_it_quits
    @menu.open
    feedback = @menu.execute('q')
    signal = feedback[1]
    assert_equal :stop, signal
  end

  def test_it_shows_instructions
    @menu.open
    feedback = @menu.execute('i')
    message = feedback[0]
    assert message.downcase.include?('instructions')
  end

  def test_it_can_start_a_game
    @menu.open
    feedback = @menu.execute(p)
  end
end
