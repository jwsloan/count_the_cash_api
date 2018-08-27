module Api
  module Views
    module Envelopes
      class List
        include Api::View
        layout false

        def render
          _raw JSON.dump(envelopes.map{ |envelope| envelope.to_h })
        end
      end
    end
  end
end
