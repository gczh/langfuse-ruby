# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class DatasetItems
          # Create a dataset item
          #
          # @param params [Langfuse::Models::API::Public::DatasetItemCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :dataset_name
          #
          #   @option params [String, nil] :id Dataset items are upserted on their id. Id needs to be unique (project-level)
          #     and cannot be reused across datasets.
          #
          #   @option params [Object] :expected_output
          #
          #   @option params [Object] :input
          #
          #   @option params [Object] :metadata
          #
          #   @option params [String, nil] :source_observation_id
          #
          #   @option params [String, nil] :source_trace_id
          #
          #   @option params [Symbol, Langfuse::Models::API::Public::DatasetStatus, nil] :status Defaults to ACTIVE for newly created items
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::DatasetItem]
          #
          def create(params)
            parsed, options = Langfuse::Models::API::Public::DatasetItemCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/public/dataset-items",
              body: parsed,
              model: Langfuse::Models::API::Public::DatasetItem,
              options: options
            )
          end

          # Get a dataset item
          #
          # @param id [String]
          #
          # @param params [Langfuse::Models::API::Public::DatasetItemRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::DatasetItem]
          #
          def retrieve(id, params = {})
            @client.request(
              method: :get,
              path: ["api/public/dataset-items/%0s", id],
              model: Langfuse::Models::API::Public::DatasetItem,
              options: params[:request_options]
            )
          end

          # Get dataset items
          #
          # @param params [Langfuse::Models::API::Public::DatasetItemListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String, nil] :dataset_name
          #
          #   @option params [Integer, nil] :limit limit of items per page
          #
          #   @option params [Integer, nil] :page page number, starts at 1
          #
          #   @option params [String, nil] :source_observation_id
          #
          #   @option params [String, nil] :source_trace_id
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::DatasetItemListResponse]
          #
          def list(params = {})
            parsed, options = Langfuse::Models::API::Public::DatasetItemListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/public/dataset-items",
              query: parsed,
              model: Langfuse::Models::API::Public::DatasetItemListResponse,
              options: options
            )
          end

          # Delete a dataset item and all its run items. This action is irreversible.
          #
          # @param id [String]
          #
          # @param params [Langfuse::Models::API::Public::DatasetItemDeleteParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::DatasetItemDeleteResponse]
          #
          def delete(id, params = {})
            @client.request(
              method: :delete,
              path: ["api/public/dataset-items/%0s", id],
              model: Langfuse::Models::API::Public::DatasetItemDeleteResponse,
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
