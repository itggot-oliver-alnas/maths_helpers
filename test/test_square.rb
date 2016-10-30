require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'has_keyword_argument'
require_relative '../lib/maths_helpers.rb'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'square' do

  it 'takes value as a keyword argument' do
    proc{ square()   }.must_raise ArgumentError
    proc{ square(12) }.must_raise ArgumentError

    :square.has_keyword_argument? :value
  end

  it 'returns the square of the value' do
    square(value: 4   ).must_equal 16
    square(value: 16  ).must_equal 256
    square(value: 256 ).must_equal 65536
  end

  it 'raises ArgumentError with correct message if called with a negative value' do
    proc{ square(value: rand(1..1000) * -1 )}.must_raise ArgumentError, 'value must not be negative'
  end

end
