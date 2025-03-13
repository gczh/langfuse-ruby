# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          class ItemRetrieveParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            # @!attribute queue_id
            #
            #   @return [String]
            required :queue_id, String

            # @!parse
            #   # @param queue_id [String]
            #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(queue_id:, request_options: {}, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
