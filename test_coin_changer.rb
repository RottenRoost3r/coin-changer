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

    def test_assert_that_dime_works
    	assert_equal({:dime=>1}, coins(10))
    end

    def test_assert_that_dime_works_with_quarter
    	assert_equal({:quarter=>1, :dime=>1}, coins(35))
    	assert_equal({:quarter=>1, :dime=>2}, coins(45))
    	assert_equal({:quarter=>2, :dime=>1}, coins(60))
    	assert_equal({:quarter=>2, :dime=>2}, coins(70))
    end

    def test_assert_that_nickel_works
    	assert_equal({:nickel=>1}, coins(5))
    end

    def test_assert_that_nickel_works_with_dime_and_quarter
    	assert_equal({:quarter=>1, :dime=>1, :nickel=>1}, coins(40))
    	assert_equal({:quarter=>2, :nickel=>1}, coins(55))
    	assert_equal({:quarter=>3, :nickel=>1}, coins(80))
    end

    def test_assert_that_penny_works
    	assert_equal({:penny=>1}, coins(1))
    end

    def test_assert_that_penny_works_with_others
    	assert_equal({:quarter=>1, :dime=>1, :nickel=>1, :penny=>1}, coins(41))
    	assert_equal({:quarter=>1, :dime=>1, :nickel=>1, :penny=>2}, coins(42))
    	assert_equal({:quarter=>1, :dime=>2, :penny=>3}, coins(48))
    	assert_equal({:quarter=>1, :penny=>1}, coins(26))
    	assert_equal({:dime=>1, :penny=>1}, coins(11))
    	assert_equal({:nickel=>1, :penny=>1}, coins(6))
    end
end