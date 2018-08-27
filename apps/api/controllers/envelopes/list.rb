module Api
  module Controllers
    module Envelopes
      class List
        include Api::Action
        accept :json

        expose :envelopes

        def call(params)
          @envelopes = EnvelopeRepository.new.all
        end
      end
    end
  end
end
