# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ScoreDataType < Langfuse::Enum
          abstract!

          NUMERIC = :NUMERIC
          BOOLEAN = :BOOLEAN
          CATEGORICAL = :CATEGORICAL

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
