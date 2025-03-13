# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Scores
          # Create a score
          #
          # @param params [Langfuse::Models::API::Public::ScoreCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :name
          #
          #   @option params [String] :trace_id
          #
          #   @option params [Float, String] :value The value of the score. Must be passed as string for categorical scores, and
          #     numeric for boolean and numeric scores. Boolean score values must equal either 1
          #     or 0 (true or false)
          #
          #   @option params [String, nil] :id
          #
          #   @option params [String, nil] :comment
          #
          #   @option params [String, nil] :config_id Reference a score config on a score. The unique langfuse identifier of a score
          #     config. When passing this field, the dataType and stringValue fields are
          #     automatically populated.
          #
          #   @option params [Symbol, Langfuse::Models::API::Public::ScoreDataType, nil] :data_type The data type of the score. When passing a configId this field is inferred.
          #     Otherwise, this field must be passed or will default to numeric.
          #
          #   @option params [String, nil] :environment The environment of the score. Can be any lowercase alphanumeric string with
          #     hyphens and underscores that does not start with 'langfuse'.
          #
          #   @option params [String, nil] :observation_id
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::ScoreCreateResponse]
          #
          def create(params)
            parsed, options = Langfuse::Models::API::Public::ScoreCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/public/scores",
              body: parsed,
              model: Langfuse::Models::API::Public::ScoreCreateResponse,
              options: options
            )
          end

          # Get a score
          #
          # @param score_id [String] The unique langfuse identifier of a score
          #
          # @param params [Langfuse::Models::API::Public::ScoreRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::Score::UnionMember0, Langfuse::Models::API::Public::Score::UnionMember1, Langfuse::Models::API::Public::Score::UnionMember2]
          #
          def retrieve(score_id, params = {})
            @client.request(
              method: :get,
              path: ["api/public/scores/%0s", score_id],
              model: Langfuse::Models::API::Public::Score,
              options: params[:request_options]
            )
          end

          # Get a list of scores
          #
          # @param params [Langfuse::Models::API::Public::ScoreListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String, nil] :config_id Retrieve only scores with a specific configId.
          #
          #   @option params [Symbol, Langfuse::Models::API::Public::ScoreDataType, nil] :data_type Retrieve only scores with a specific dataType.
          #
          #   @option params [Array<String, nil>] :environment Optional filter for scores where the environment is one of the provided values.
          #
          #   @option params [Time, nil] :from_timestamp Optional filter to only include scores created on or after a certain datetime
          #     (ISO 8601)
          #
          #   @option params [Integer, nil] :limit Limit of items per page. If you encounter api issues due to too large page
          #     sizes, try to reduce the limit.
          #
          #   @option params [String, nil] :name Retrieve only scores with this name.
          #
          #   @option params [String, nil] :operator Retrieve only scores with <operator> value.
          #
          #   @option params [Integer, nil] :page Page number, starts at 1.
          #
          #   @option params [String, nil] :queue_id Retrieve only scores with a specific annotation queueId.
          #
          #   @option params [String, nil] :score_ids Comma-separated list of score IDs to limit the results to.
          #
          #   @option params [Symbol, Langfuse::Models::API::Public::ScoreSource, nil] :source Retrieve only scores from a specific source.
          #
          #   @option params [Time, nil] :to_timestamp Optional filter to only include scores created before a certain datetime
          #     (ISO 8601)
          #
          #   @option params [Array<String, nil>] :trace_tags Only scores linked to traces that include all of these tags will be returned.
          #
          #   @option params [String, nil] :user_id Retrieve only scores with this userId associated to the trace.
          #
          #   @option params [Float, nil] :value Retrieve only scores with <operator> value.
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::ScoreListResponse]
          #
          def list(params = {})
            parsed, options = Langfuse::Models::API::Public::ScoreListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/public/scores",
              query: parsed,
              model: Langfuse::Models::API::Public::ScoreListResponse,
              options: options
            )
          end

          # Delete a score
          #
          # @param score_id [String] The unique langfuse identifier of a score
          #
          # @param params [Langfuse::Models::API::Public::ScoreDeleteParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [nil]
          #
          def delete(score_id, params = {})
            @client.request(
              method: :delete,
              path: ["api/public/scores/%0s", score_id],
              model: NilClass,
              options: params[:request_options]
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
