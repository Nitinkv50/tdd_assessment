# lib/string_calculator_spec.rb

require "string_calculator"

describe StringCalculator do
  string_calculator = StringCalculator.new

  describe "#add" do
    context "when we have empty string" do
      it "returns 0 for an empty string" do
        expect(string_calculator.add("")).to eq(0)
      end
    end
  end
end
