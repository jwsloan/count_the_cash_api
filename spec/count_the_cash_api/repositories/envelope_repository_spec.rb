require_relative "../../spec_helper"

describe EnvelopeRepository do
  it "works" do
    envelope = EnvelopeRepository.new.create(name: "test", amount: "10")

    envelope.name.must_equal "test"
    envelope.amount.must_equal 10
  end
end
