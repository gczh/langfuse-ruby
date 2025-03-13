# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          class ItemUpdateParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            # @!attribute queue_id
            #
            #   @return [String]
            required :queue_id, String

            # @!attribute status
            #
            #   @return [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus, nil]
            optional :status,
                     enum: -> { Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus },
                     nil?: true

            # @!parse
            #   # @param queue_id [String]
            #   # @param status [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus, nil]
            #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(queue_id:, status: nil, request_options: {}, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
