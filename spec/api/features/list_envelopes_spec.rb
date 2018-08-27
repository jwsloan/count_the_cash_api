require "api_helper"

describe "List Envelopes" do
  let(:repository) { EnvelopeRepository.new }
  
  before do
    header "Content-Type", "application/json;"

    repository.clear
  end

  it "is successful" do
    get "/api/envelopes"

    last_response.must_be :ok?
    last_response.content_type.must_include "application/json"
  end

  it "is empty by default" do
    get "/api/envelopes"

    last_response.body.must_equal "[]"
  end

  it "returns the envelopes" do
    repository.create(name: "Groceries", amount: 350)
    repository.create(name: "Gas", amount: 175)

    get "/api/envelopes"
    last_response.body.must_include "\"name\":\"Groceries\",\"amount\":350"
  end
end