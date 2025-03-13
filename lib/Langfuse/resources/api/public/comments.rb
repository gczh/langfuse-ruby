# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Comments
          # Create a comment. Comments may be attached to different object types (trace,
          #   observation, session, prompt).
          #
          # @param params [Langfuse::Models::API::Public::CommentCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :content The content of the comment. May include markdown. Currently limited to 3000
          #     characters.
          #
          #   @option params [String] :object_id_ The id of the object to attach the comment to. If this does not reference a
          #     valid existing object, an error will be thrown.
          #
          #   @option params [String] :object_type The type of the object to attach the comment to (trace, observation, session,
          #     prompt).
          #
          #   @option params [String] :project_id The id of the project to attach the comment to.
          #
          #   @option params [String, nil] :author_user_id The id of the user who created the comment.
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::CommentCreateResponse]
          #
          def create(params)
            parsed, options = Langfuse::Models::API::Public::CommentCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/public/comments",
              body: parsed,
              model: Langfuse::Models::API::Public::CommentCreateResponse,
              options: options
            )
          end

          # Get a comment by id
          #
          # @param comment_id [String] The unique langfuse identifier of a comment
          #
          # @param params [Langfuse::Models::API::Public::CommentRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::Comment]
          #
          def retrieve(comment_id, params = {})
            @client.request(
              method: :get,
              path: ["api/public/comments/%0s", comment_id],
              model: Langfuse::Models::API::Public::Comment,
              options: params[:request_options]
            )
          end

          # Get all comments
          #
          # @param params [Langfuse::Models::API::Public::CommentListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String, nil] :author_user_id Filter comments by author user id.
          #
          #   @option params [Integer, nil] :limit Limit of items per page. If you encounter api issues due to too large page
          #     sizes, try to reduce the limit
          #
          #   @option params [String, nil] :object_id_ Filter comments by object id. If objectType is not provided, an error will be
          #     thrown.
          #
          #   @option params [String, nil] :object_type Filter comments by object type (trace, observation, session, prompt).
          #
          #   @option params [Integer, nil] :page Page number, starts at 1.
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::CommentListResponse]
          #
          def list(params = {})
            parsed, options = Langfuse::Models::API::Public::CommentListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/public/comments",
              query: parsed,
              model: Langfuse::Models::API::Public::CommentListResponse,
              options: options
            )
          end

          # @param client [Langfuse::Client]
          #
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
