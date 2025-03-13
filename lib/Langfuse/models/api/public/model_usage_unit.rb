# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        # @abstract
        #
        # Unit of usage in Langfuse
        class ModelUsageUnit < Langfuse::Enum
          CHARACTERS = :CHARACTERS
          TOKENS = :TOKENS
          MILLISECONDS = :MILLISECONDS
          SECONDS = :SECONDS
          IMAGES = :IMAGES
          REQUESTS = :REQUESTS

          finalize!
        end
      end
    end
  end
end
