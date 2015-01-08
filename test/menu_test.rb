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
    assert @menu.active?
  end

  def test_menu_deactivates_for_gameplay
    @menu.play
    refute @menu.active?
  end



end
