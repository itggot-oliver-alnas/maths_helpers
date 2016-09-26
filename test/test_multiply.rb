require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/maths_helpers.rb'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'multiply' do

  it 'takes factor1 and factor2 as keyword arguments' do
    proc{ multiply()      }.must_raise ArgumentError
    proc{ multiply(12)    }.must_raise ArgumentError
    proc{ multiply(12, 4) }.must_raise ArgumentError
  end

  it 'returns the product of the factors' do
    multiply(factor1: 12, factor2:  4).must_equal 48
    multiply(factor1: 13, factor2: 37).must_equal 481
    multiply(factor1: 47, factor2: -5).must_equal -235
  end

end