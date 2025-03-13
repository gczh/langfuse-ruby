# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        # @abstract
        #
        class ScoreSource < Langfuse::Enum
          ANNOTATION = :ANNOTATION
          API = :API
          EVAL = :EVAL

          finalize!
        end
      end
    end
  end
end
