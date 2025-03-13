# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          class ItemCreateParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            # @!attribute object_id_
            #
            #   @return [String]
            required :object_id_, String, api_name: :objectId

            # @!attribute object_type
            #
            #   @return [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueObjectType]
            required :object_type,
                     enum: -> { Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueObjectType },
                     api_name: :objectType

            # @!attribute status
            #   Defaults to PENDING for new queue items
            #
            #   @return [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus, nil]
            optional :status,
                     enum: -> { Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus },
                     nil?: true

            # @!parse
            #   # @param object_id_ [String]
            #   # @param object_type [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueObjectType]
            #   # @param status [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus, nil]
            #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(object_id_:, object_type:, status: nil, request_options: {}, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
