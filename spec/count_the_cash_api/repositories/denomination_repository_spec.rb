require_relative '../../spec_helper'

describe DenominationRepository do
  let(:repository) { DenominationRepository.new }

  describe ".by_value" do
    before do 
      repository.clear
    end
    it "returns the correct Denomination" do
      repository.create(value: 50, name: "Fifty")
      repository.create(value: 1, name: "One")
      
      repository.by_value(50).must_be_kind_of Denomination
      assert_equal(50, repository.by_value(50).value)
      assert_equal(1, repository.by_value(1).value)
    end
  end
end
