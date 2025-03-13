# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Metrics
          # Get daily metrics of the Langfuse project
          #
          # @param params [Langfuse::Models::API::Public::MetricGetDailyParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<String, nil>] :environment Optional filter for metrics where events include any of these environments
          #
          #   @option params [Time, nil] :from_timestamp Optional filter to only include traces and observations on or after a certain
          #     datetime (ISO 8601)
          #
          #   @option params [Integer, nil] :limit limit of items per page
          #
          #   @option params [Integer, nil] :page page number, starts at 1
          #
          #   @option params [Array<String, nil>] :tags Optional filter for metrics where traces include all of these tags
          #
          #   @option params [Time, nil] :to_timestamp Optional filter to only include traces and observations before a certain
          #     datetime (ISO 8601)
          #
          #   @option params [String, nil] :trace_name Optional filter by the name of the trace
          #
          #   @option params [String, nil] :user_id Optional filter by the userId associated with the trace
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::MetricGetDailyResponse]
          #
          def get_daily(params = {})
            parsed, options = Langfuse::Models::API::Public::MetricGetDailyParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/public/metrics/daily",
              query: parsed,
              model: Langfuse::Models::API::Public::MetricGetDailyResponse,
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
