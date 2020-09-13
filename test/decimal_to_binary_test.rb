require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "decimal_to_binary" do
  it "From 153 to 10011001" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    decimal = 153

    expect(decimal_to_binary(decimal)).must_equal binary_array
  end

  it "From 13 to 00001101" do
    binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
    decimal = 13

    expect(decimal_to_binary(decimal)).must_equal binary_array
  end

  it "From 128 to 10000000" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    decimal = 128

    expect(decimal_to_binary(decimal)).must_equal binary_array
  end

  it "From decimal to random binary" do
    binary_array = Array.new(8) { rand(0..1) }
    decimal = binary_array.join.to_s.to_i(2)

    expect(decimal_to_binary(decimal)).must_equal binary_array
  end
end
