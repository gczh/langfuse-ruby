# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          class AnnotationQueueItem < Langfuse::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

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

            # @!attribute queue_id
            #
            #   @return [String]
            required :queue_id, String, api_name: :queueId

            # @!attribute status
            #
            #   @return [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus]
            required :status, enum: -> { Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus }

            # @!attribute updated_at
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute completed_at
            #
            #   @return [Time, nil]
            optional :completed_at, Time, api_name: :completedAt, nil?: true

            # @!parse
            #   # @param id [String]
            #   # @param created_at [Time]
            #   # @param object_id_ [String]
            #   # @param object_type [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueObjectType]
            #   # @param queue_id [String]
            #   # @param status [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus]
            #   # @param updated_at [Time]
            #   # @param completed_at [Time, nil]
            #   #
            #   def initialize(id:, created_at:, object_id_:, object_type:, queue_id:, status:, updated_at:, completed_at: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end

        AnnotationQueueItem = AnnotationQueues::AnnotationQueueItem
      end
    end
  end
end
