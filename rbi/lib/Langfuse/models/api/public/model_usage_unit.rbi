# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ModelUsageUnit < Langfuse::Enum
          abstract!

          CHARACTERS = :CHARACTERS
          TOKENS = :TOKENS
          MILLISECONDS = :MILLISECONDS
          SECONDS = :SECONDS
          IMAGES = :IMAGES
          REQUESTS = :REQUESTS

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
