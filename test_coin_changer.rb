require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanging < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_assert_that_result_is_hash
    	assert_equal(Hash, coins(0).class)
    end

    def test_assert_that_quarter_works
    	assert_equal({:quarter=>1}, coins(25))
    end
end