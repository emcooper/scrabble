gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end
  
  def test_it_can_score_upcase_words
    assert_equal 8, Scrabble.new.score("HELLO")
    assert_equal 12, Scrabble.new.score("ZOO")
  end 
  
  def test_it_can_score_downcase_words
    assert_equal 6, Scrabble.new.score("dogs")
    assert_equal 13, Scrabble.new.score("quit")
  end
  
  def test_it_can_score_mixed_downcase_and_upcase_words
    assert_equal 11, Scrabble.new.score("eXit")
    assert_equal 6, Scrabble.new.score("CAtS")
  end
  
  def test_it_scores_empty_words_0
    assert_equal 0, Scrabble.new.score("")
  end
  
  def test_it_scores_nil_words_0
    assert_equal 0, Scrabble.new.score(nil)
  end
end
