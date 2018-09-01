require "spec_helper"

describe DistributeDollars do
  let(:interactor) { DistributeDollars.new }
  let(:attributes) { Hash.new[amount: 234, allowed_denominations: [50,20,10,5,1]] }

  describe "good input" do
    let(:result) { interactor.call(attributes) }

    it "succeeds" do
      result.success?.must_equal true
    end

    it "returns a distribution of StackOfBills objects" do
      skip
      result.distribution.first.must_be_kind_of StackOfBills
      result.distribution.first.denomination.must_equal 50
      result.distribution.last.denomination.must_equal 1
    end

    # fifties.denomination.must_equal 50
    #   fifties.count.must_equal 4
    #   fifties.to_s.must_equal "Fifties"
    #   fifties.value.must_equal 200
  end
end