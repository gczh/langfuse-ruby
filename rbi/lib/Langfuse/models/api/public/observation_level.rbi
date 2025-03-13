# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ObservationLevel < Langfuse::Enum
          abstract!

          DEBUG = :DEBUG
          DEFAULT = :DEFAULT
          WARNING = :WARNING
          ERROR = :ERROR

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
