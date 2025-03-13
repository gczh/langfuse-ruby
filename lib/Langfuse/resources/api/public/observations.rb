# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Observations
          # Get a observation
          #
          # @param observation_id [String] The unique langfuse identifier of an observation, can be an event, span or
          #   generation
          #
          # @param params [Langfuse::Models::API::Public::ObservationRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::ObservationsView]
          #
          def retrieve(observation_id, params = {})
            @client.request(
              method: :get,
              path: ["api/public/observations/%0s", observation_id],
              model: Langfuse::Models::API::Public::ObservationsView,
              options: params[:request_options]
            )
          end

          # Get a list of observations
          #
          # @param params [Langfuse::Models::API::Public::ObservationListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<String, nil>] :environment Optional filter for observations where the environment is one of the provided
          #     values.
          #
          #   @option params [Time, nil] :from_start_time Retrieve only observations with a start_time or or after this datetime (ISO
          #     8601).
          #
          #   @option params [Integer, nil] :limit Limit of items per page. If you encounter api issues due to too large page
          #     sizes, try to reduce the limit.
          #
          #   @option params [String, nil] :name
          #
          #   @option params [Integer, nil] :page Page number, starts at 1.
          #
          #   @option params [String, nil] :parent_observation_id
          #
          #   @option params [Time, nil] :to_start_time Retrieve only observations with a start_time before this datetime (ISO 8601).
          #
          #   @option params [String, nil] :trace_id
          #
          #   @option params [String, nil] :type
          #
          #   @option params [String, nil] :user_id
          #
          #   @option params [String, nil] :version Optional filter to only include observations with a certain version.
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::ObservationListResponse]
          #
          def list(params = {})
            parsed, options = Langfuse::Models::API::Public::ObservationListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/public/observations",
              query: parsed,
              model: Langfuse::Models::API::Public::ObservationListResponse,
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
