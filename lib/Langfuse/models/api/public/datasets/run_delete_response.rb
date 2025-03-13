# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module Datasets
          class RunDeleteResponse < Langfuse::BaseModel
            # @!attribute message
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
end
