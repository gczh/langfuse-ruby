# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Models
          # Create a model
          #
          # @param params [Langfuse::Models::API::Public::ModelCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :match_pattern Regex pattern which matches this model definition to generation.model. Useful in
          #     case of fine-tuned models. If you want to exact match, use `(?i)^modelname$`
          #
          #   @option params [String] :model_name Name of the model definition. If multiple with the same name exist, they are
          #     applied in the following order: (1) custom over built-in, (2) newest according
          #     to startTime where model.startTime<observation.startTime
          #
          #   @option params [Float, nil] :input_price Price (USD) per input unit
          #
          #   @option params [Float, nil] :output_price Price (USD) per output unit
          #
          #   @option params [Time, nil] :start_date Apply only to generations which are newer than this ISO date.
          #
          #   @option params [Object] :tokenizer_config Optional. Configuration for the selected tokenizer. Needs to be JSON. See docs
          #     for more details.
          #
          #   @option params [String, nil] :tokenizer_id Optional. Tokenizer to be applied to observations which match to this model. See
          #     docs for more details.
          #
          #   @option params [Float, nil] :total_price Price (USD) per total units. Cannot be set if input or output price is set.
          #
          #   @option params [Symbol, Langfuse::Models::API::Public::ModelUsageUnit, nil] :unit Unit used by this model.
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::Model]
          #
          def create(params)
            parsed, options = Langfuse::Models::API::Public::ModelCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/public/models",
              body: parsed,
              model: Langfuse::Models::API::Public::Model,
              options: options
            )
          end

          # Get a model
          #
          # @param id [String]
          #
          # @param params [Langfuse::Models::API::Public::ModelRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::Model]
          #
          def retrieve(id, params = {})
            @client.request(
              method: :get,
              path: ["api/public/models/%0s", id],
              model: Langfuse::Models::API::Public::Model,
              options: params[:request_options]
            )
          end

          # Get all models
          #
          # @param params [Langfuse::Models::API::Public::ModelListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Integer, nil] :limit limit of items per page
          #
          #   @option params [Integer, nil] :page page number, starts at 1
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::ModelListResponse]
          #
          def list(params = {})
            parsed, options = Langfuse::Models::API::Public::ModelListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/public/models",
              query: parsed,
              model: Langfuse::Models::API::Public::ModelListResponse,
              options: options
            )
          end

          # Delete a model. Cannot delete models managed by Langfuse. You can create your
          #   own definition with the same modelName to override the definition though.
          #
          # @param id [String]
          #
          # @param params [Langfuse::Models::API::Public::ModelDeleteParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [nil]
          #
          def delete(id, params = {})
            @client.request(
              method: :delete,
              path: ["api/public/models/%0s", id],
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
