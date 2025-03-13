# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class DatasetStatus < Langfuse::Enum
          abstract!

          ACTIVE = :ACTIVE
          ARCHIVED = :ARCHIVED

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
