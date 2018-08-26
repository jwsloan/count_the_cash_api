# Require this file for api tests
require_relative "./spec_helper"
require "rack/test"

Hanami.app

module Minitest
  class Spec
    include Rack::Test::Methods

    def app
      Hanami.app
    end
  end
end
