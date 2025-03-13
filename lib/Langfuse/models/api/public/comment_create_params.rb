# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class CommentCreateParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute content
          #   The content of the comment. May include markdown. Currently limited to 3000
          #     characters.
          #
          #   @return [String]
          required :content, String

          # @!attribute object_id_
          #   The id of the object to attach the comment to. If this does not reference a
          #     valid existing object, an error will be thrown.
          #
          #   @return [String]
          required :object_id_, String, api_name: :objectId

          # @!attribute object_type
          #   The type of the object to attach the comment to (trace, observation, session,
          #     prompt).
          #
          #   @return [String]
          required :object_type, String, api_name: :objectType

          # @!attribute project_id
          #   The id of the project to attach the comment to.
          #
          #   @return [String]
          required :project_id, String, api_name: :projectId

          # @!attribute author_user_id
          #   The id of the user who created the comment.
          #
          #   @return [String, nil]
          optional :author_user_id, String, api_name: :authorUserId, nil?: true

          # @!parse
          #   # @param content [String]
          #   # @param object_id_ [String]
          #   # @param object_type [String]
          #   # @param project_id [String]
          #   # @param author_user_id [String, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(content:, object_id_:, object_type:, project_id:, author_user_id: nil, request_options: {}, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
