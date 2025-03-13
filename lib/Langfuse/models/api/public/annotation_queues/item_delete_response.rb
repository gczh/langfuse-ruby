# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          class ItemDeleteResponse < Langfuse::BaseModel
            # @!attribute message
            #
            #   @return [String]
            required :message, String

            # @!attribute success
            #
            #   @return [Boolean]
            required :success, Langfuse::BooleanModel

            # @!parse
            #   # @param message [String]
            #   # @param success [Boolean]
            #   #
            #   def initialize(message:, success:, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
