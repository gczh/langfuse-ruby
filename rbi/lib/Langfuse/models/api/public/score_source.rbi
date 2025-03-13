# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ScoreSource < Langfuse::Enum
          abstract!

          ANNOTATION = :ANNOTATION
          API = :API
          EVAL = :EVAL

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
