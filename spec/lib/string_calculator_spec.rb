# lib/string_calculator_spec.rb

require "string_calculator"

describe StringCalculator do
  string_calculator = StringCalculator.new

  describe "#add" do
    it "returns 0 for an empty string" do
      expect(string_calculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(string_calculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(string_calculator.add("1,5")).to eq(6)
    end

    it "returns the sum of multiple numbers" do
      expect(string_calculator.add("10,20,30")).to eq(60)
    end

    it "handles a sequence of numbers" do
      expect(string_calculator.add("3,4,5,6")).to eq(18)
    end

    it "returns 0 for a string of zeros" do
      expect(string_calculator.add("0,0,0")).to eq(0)
    end

    it "handles negative numbers" do
      expect(string_calculator.add("1,-1")).to eq(0)
    end

    it "returns the sum of various numbers" do
      expect(string_calculator.add("7,8,9")).to eq(24)
    end

    it "handles a single large number" do
      expect(string_calculator.add("100")).to eq(100)
    end

    it "handles a sequence of five numbers" do
      expect(string_calculator.add("1,2,3,4,5")).to eq(15)
    end

    it "handles new lines between numbers" do
      expect(string_calculator.add("1\n2,3")).to eq(6)
    end

    it "handles multiple new lines between numbers" do
      expect(string_calculator.add("1\n2\n3")).to eq(6)
    end

    it "handles mixed commas and new lines" do
      expect(string_calculator.add("1,2\n3,4\n5")).to eq(15)
    end
  end
end
