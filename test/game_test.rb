require_relative 'test_helper'
require_relative '../lib/game'

class GameTest < Minitest::Test
  def test_it_generates_an_array_of_letters
    game = Game.new
    assert_equal ["b", "r", "y", "g"], game.letters
  end

  def test_game_can_generate_a_random_assortment
    game = Game.new
    assert_equal 4, game.randomize_letters.count
  end

  def test_it_can_check_if_guess_was_in_the_correct_position
    game = Game.new
    game.random = ["B", "Y", "R", "G"]
    assert_equal 2, game.position(["B", "R", "Y", "G"])
  end

  def test_it_can_check_if_any_colors_were_correct
    game = Game.new
    game.random = ["B", "Y", "R", "G"]
    assert_equal 2, game.color(["Y", "Y", "Y", "G"])
  end

  def test_it_can_check_
end
