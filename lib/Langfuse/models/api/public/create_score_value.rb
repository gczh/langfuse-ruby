# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        # @abstract
        #
        # The value of the score. Must be passed as string for categorical scores, and
        #   numeric for boolean and numeric scores
        class CreateScoreValue < Langfuse::Union
          variant Float

          variant String
        end
      end
    end
  end
end
