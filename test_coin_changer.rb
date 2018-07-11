require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanging < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_assert_that_result_is_hash
    	assert_equal(Hash, coins().class)
    end
end