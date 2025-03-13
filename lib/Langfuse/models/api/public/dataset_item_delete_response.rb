# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class DatasetItemDeleteResponse < Langfuse::BaseModel
          # @!attribute message
          #   Success message after deletion
          #
          #   @return [String]
          required :message, String

          # @!parse
          #   # @param message [String]
          #   #
          #   def initialize(message:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
