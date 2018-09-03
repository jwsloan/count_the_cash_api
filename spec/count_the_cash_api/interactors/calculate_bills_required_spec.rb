require "spec_helper"

describe CalculateBillsRequired do
  let(:interactor) { CalculateBillsRequired.new }
  let(:attributes) { Hash[amount: 234]}
  
  describe "good input" do
    let(:result) { interactor.call(attributes) }

    it "succeeds" do
      result.success?.must_equal true
    end

    it "returns an array of hashes" do
      result.counts.must_equal [
        [100, 2],
        [ 50, 0],
        [ 20, 1],
        [ 10, 1],
        [  5, 0],
        [  1, 4]
      ]
    end

    describe "overriding allowed_denominations" do
      let(:attributes) { Hash[amount: 234, allowed_denominations: [50,1]]}

      it "succeeds" do
        result.counts.must_equal [
          [50,  4],
          [ 1, 34]
        ]
      end
    end
  end
end