require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      calculator = StringCalculator.new
      expect(calculator.add("1")).to eq(1)
      expect(calculator.add("5")).to eq(5)
    end

    it 'returns the sum of two comma-separated numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("1,5")).to eq(6)
      expect(calculator.add("2,3")).to eq(5)
    end

    it 'handles any amount of numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("1,2,3")).to eq(6)
      expect(calculator.add("1,2,3,4,5")).to eq(15)
      expect(calculator.add("10,20,30,40")).to eq(100)
    end
  end
end

