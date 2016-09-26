require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/maths_helpers.rb'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'add' do

  it 'takes term1 and term2 as keyword arguments' do
    proc{ add()       }.must_raise ArgumentError
    proc{ add(12)     }.must_raise ArgumentError
    proc{ add(12, 4)  }.must_raise ArgumentError

  end

  it 'returns the sum of the terms' do
    add(term1: 12, term2: 4 ).must_equal 16
    add(term1: 13, term2: 37).must_equal 50
    add(term1: 2, term2: 40 ).must_equal 42
  end

end