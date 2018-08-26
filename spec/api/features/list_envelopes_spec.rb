require "api_helper"

describe "List Envelopes" do
  before do
    header "Content-Type", "application/json;"
    get "/api/envelopes"
  end

  it "is successful" do
    last_response.must_be :ok?
    last_response.content_type.must_include "application/json"
  end

  it "is empty by default" do
    last_response.body.must_equal "[]"
  end
end