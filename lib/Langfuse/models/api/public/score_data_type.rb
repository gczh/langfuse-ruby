# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        # @abstract
        #
        class ScoreDataType < Langfuse::Enum
          NUMERIC = :NUMERIC
          BOOLEAN = :BOOLEAN
          CATEGORICAL = :CATEGORICAL

          finalize!
        end
      end
    end
  end
end
