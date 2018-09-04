require_relative '../../spec_helper'

describe DenominationRepository do
  let(:repository) { DenominationRepository.new }

  before do 
    repository.clear
  end

  describe ".by_value" do  
    it "returns the correct Denomination" do
      repository.create(value: 50, name: "Fifty")
      repository.create(value: 1, name: "One")
      
      repository.by_value(50).must_be_kind_of Denomination
      assert_equal(50, repository.by_value(50).value)
      assert_equal(1, repository.by_value(1).value)
    end
  end

  describe ".for_values" do  
    it "returns the correct Denominations" do
      [100, 50, 20, 10, 5, 1].each do |value|
        repository.create(value: value, name: value)
      end

      denominations = repository.for_values([50, 10, 1])
      denominations.count.must_equal 3
      assert_equal(50, denominations.first.value)
      assert_equal(1, denominations.last.value)
    end
  end
end
