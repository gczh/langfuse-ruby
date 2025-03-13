# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class CommentListParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute author_user_id
          #   Filter comments by author user id.
          #
          #   @return [String, nil]
          optional :author_user_id, String, api_name: :authorUserId, nil?: true

          # @!attribute limit
          #   Limit of items per page. If you encounter api issues due to too large page
          #     sizes, try to reduce the limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer, nil?: true

          # @!attribute object_id_
          #   Filter comments by object id. If objectType is not provided, an error will be
          #     thrown.
          #
          #   @return [String, nil]
          optional :object_id_, String, api_name: :objectId, nil?: true

          # @!attribute object_type
          #   Filter comments by object type (trace, observation, session, prompt).
          #
          #   @return [String, nil]
          optional :object_type, String, api_name: :objectType, nil?: true

          # @!attribute page
          #   Page number, starts at 1.
          #
          #   @return [Integer, nil]
          optional :page, Integer, nil?: true

          # @!parse
          #   # @param author_user_id [String, nil]
          #   # @param limit [Integer, nil]
          #   # @param object_id_ [String, nil]
          #   # @param object_type [String, nil]
          #   # @param page [Integer, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(author_user_id: nil, limit: nil, object_id_: nil, object_type: nil, page: nil, request_options: {}, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
