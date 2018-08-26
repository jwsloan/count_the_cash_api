require_relative "../../spec_helper"

describe Envelope do
  subject { Envelope.new }

  it "should have fields" do
    subject.must_respond_to :name
    subject.must_respond_to :amount
  end
end
