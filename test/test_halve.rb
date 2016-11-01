require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'has_keyword_argument'
require_relative '../lib/maths_helpers.rb'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'halve' do

  it 'takes value as a keyword argument' do
    proc{ halve(12) }.must_raise ArgumentError

    :halve.has_keyword_argument? :value
  end

  it 'returns the halved values of even numbers' do
    halve(value: 12   ).must_equal 6
    halve(value: 6    ).must_equal 3
    halve(value: 1024 ).must_equal 512
  end

  it 'returns the halved values of uneven numbers' do
    halve(value: 9).must_equal  4.5
    halve(value: 13).must_equal 6.5
  end
end
