require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'mocha/mini_test'

require_relative '../lib/maths_helpers.rb'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'square_of_square_root' do

  it 'takes value as a keyword argument' do
    proc{ square_of_square_root()   }.must_raise ArgumentError
    proc{ square_of_square_root(12) }.must_raise ArgumentError
  end

  it 'returns the square of the square-root of the value' do
    square_of_square_root(value: 4  ).must_equal 4
    square_of_square_root(value: 16 ).must_equal 16
    square_of_square_root(value: 256).must_equal 256
  end

  it 'raises ArgumentError if called with a negative value' do
    proc{ square_of_square_root(value: rand(1..1000) * -1 )}.must_raise ArgumentError, 'value must not be negative'
  end

  it 'calls the square function with the square root of the value' do
    self.expects(:square).with({value: 2.0})
    square_of_square_root(value: 4)
  end

  it 'calls the Math.sqrt function to calculate the square root' do
    Math.expects(:sqrt).with(4).returns(2.0)
    square_of_square_root(value: 4)
  end

end