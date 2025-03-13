# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class Comment < Langfuse::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute content
          #
          #   @return [String]
          required :content, String

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
          #   @return [Symbol, Langfuse::Models::API::Public::Comment::ObjectType]
          required :object_type,
                   enum: -> { Langfuse::Models::API::Public::Comment::ObjectType },
                   api_name: :objectType

          # @!attribute project_id
          #
          #   @return [String]
          required :project_id, String, api_name: :projectId

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute author_user_id
          #
          #   @return [String, nil]
          optional :author_user_id, String, api_name: :authorUserId, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param content [String]
          #   # @param created_at [Time]
          #   # @param object_id_ [String]
          #   # @param object_type [Symbol, Langfuse::Models::API::Public::Comment::ObjectType]
          #   # @param project_id [String]
          #   # @param updated_at [Time]
          #   # @param author_user_id [String, nil]
          #   #
          #   def initialize(id:, content:, created_at:, object_id_:, object_type:, project_id:, updated_at:, author_user_id: nil, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void

          # @abstract
          #
          class ObjectType < Langfuse::Enum
            TRACE = :TRACE
            OBSERVATION = :OBSERVATION
            SESSION = :SESSION
            PROMPT = :PROMPT

            finalize!
          end
        end
      end
    end
  end
end
