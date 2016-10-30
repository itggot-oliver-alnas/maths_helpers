require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'has_keyword_argument'
require_relative '../lib/maths_helpers.rb'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'subtract' do

  it 'should take term1 and term2 as keyword arguments' do
    proc{ subtract()      }.must_raise ArgumentError
    proc{ subtract(12)    }.must_raise ArgumentError
    proc{ subtract(12, 4) }.must_raise ArgumentError

    :subtract.has_keyword_argument? :term1, :term2
  end

  it 'should return the difference between the terms' do
    subtract(term1: 12, term2: 4  ).must_equal 8
    subtract(term1: 13, term2: 37 ).must_equal -24
    subtract(term1: 47, term2: 5  ).must_equal 42
  end

end
