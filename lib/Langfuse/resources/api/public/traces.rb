# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Traces
          # Get a specific trace
          #
          # @param trace_id [String] The unique langfuse identifier of a trace
          #
          # @param params [Langfuse::Models::API::Public::TraceRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::TraceRetrieveResponse]
          #
          def retrieve(trace_id, params = {})
            @client.request(
              method: :get,
              path: ["api/public/traces/%0s", trace_id],
              model: Langfuse::Models::API::Public::TraceRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Get list of traces
          #
          # @param params [Langfuse::Models::API::Public::TraceListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<String, nil>] :environment Optional filter for traces where the environment is one of the provided values.
          #
          #   @option params [Time, nil] :from_timestamp Optional filter to only include traces with a trace.timestamp on or after a
          #     certain datetime (ISO 8601)
          #
          #   @option params [Integer, nil] :limit Limit of items per page. If you encounter api issues due to too large page
          #     sizes, try to reduce the limit.
          #
          #   @option params [String, nil] :name
          #
          #   @option params [String, nil] :order_by Format of the string [field].[asc/desc]. Fields: id, timestamp, name, userId,
          #     release, version, public, bookmarked, sessionId. Example: timestamp.asc
          #
          #   @option params [Integer, nil] :page Page number, starts at 1
          #
          #   @option params [String, nil] :release Optional filter to only include traces with a certain release.
          #
          #   @option params [String, nil] :session_id
          #
          #   @option params [Array<String, nil>] :tags Only traces that include all of these tags will be returned.
          #
          #   @option params [Time, nil] :to_timestamp Optional filter to only include traces with a trace.timestamp before a certain
          #     datetime (ISO 8601)
          #
          #   @option params [String, nil] :user_id
          #
          #   @option params [String, nil] :version Optional filter to only include traces with a certain version.
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::TraceListResponse]
          #
          def list(params = {})
            parsed, options = Langfuse::Models::API::Public::TraceListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/public/traces",
              query: parsed,
              model: Langfuse::Models::API::Public::TraceListResponse,
              options: options
            )
          end

          # Delete a specific trace
          #
          # @param trace_id [String] The unique langfuse identifier of the trace to delete
          #
          # @param params [Langfuse::Models::API::Public::TraceDeleteParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::DeleteTraceResponse]
          #
          def delete(trace_id, params = {})
            @client.request(
              method: :delete,
              path: ["api/public/traces/%0s", trace_id],
              model: Langfuse::Models::API::Public::DeleteTraceResponse,
              options: params[:request_options]
            )
          end

          # Delete multiple traces
          #
          # @param params [Langfuse::Models::API::Public::TraceDeleteMultipleParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<String>] :trace_ids List of trace IDs to delete
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::DeleteTraceResponse]
          #
          def delete_multiple(params)
            parsed, options = Langfuse::Models::API::Public::TraceDeleteMultipleParams.dump_request(params)
            @client.request(
              method: :delete,
              path: "api/public/traces",
              body: parsed,
              model: Langfuse::Models::API::Public::DeleteTraceResponse,
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
