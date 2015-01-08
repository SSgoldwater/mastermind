require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/menu.rb'
require_relative '../lib/runner.rb'

class MenuTest < MiniTest::Test

  def setup
    @menu = Menu.new

  end

  def test_it_exists
    assert @menu
  end

  def test_menu_is_active_upon_file_opening
    runner = Runner.new
    runner.run
    menu_activity = @menu.active?
    assert_equal "active" , menu_activity
  end

  def test_menu_deactivates_for_gameplay
    skip
    @game.active?('active')
    assert_equal
  end



end
