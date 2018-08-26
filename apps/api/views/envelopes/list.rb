module Api
  module Views
    module Envelopes
      class List
        include Api::View
        layout false

        def render
          "[]"
        end
      end
    end
  end
end
