# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Sessions
          # Get a session. Please note that `traces` on this endpoint are not paginated, if
          #   you plan to fetch large sessions, consider
          #   `GET /api/public/traces?sessionId=<sessionId>`
          #
          # @param session_id [String] The unique id of a session
          #
          # @param params [Langfuse::Models::API::Public::SessionRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::SessionRetrieveResponse]
          #
          def retrieve(session_id, params = {})
            @client.request(
              method: :get,
              path: ["api/public/sessions/%0s", session_id],
              model: Langfuse::Models::API::Public::SessionRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Get sessions
          #
          # @param params [Langfuse::Models::API::Public::SessionListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<String, nil>] :environment Optional filter for sessions where the environment is one of the provided
          #     values.
          #
          #   @option params [Time, nil] :from_timestamp Optional filter to only include sessions created on or after a certain datetime
          #     (ISO 8601)
          #
          #   @option params [Integer, nil] :limit Limit of items per page. If you encounter api issues due to too large page
          #     sizes, try to reduce the limit.
          #
          #   @option params [Integer, nil] :page Page number, starts at 1
          #
          #   @option params [Time, nil] :to_timestamp Optional filter to only include sessions created before a certain datetime
          #     (ISO 8601)
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::SessionListResponse]
          #
          def list(params = {})
            parsed, options = Langfuse::Models::API::Public::SessionListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/public/sessions",
              query: parsed,
              model: Langfuse::Models::API::Public::SessionListResponse,
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
