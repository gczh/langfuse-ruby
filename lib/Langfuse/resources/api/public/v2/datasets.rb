# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class V2
          class Datasets
            # Create a dataset
            #
            # @param params [Langfuse::Models::API::Public::V2::DatasetCreateParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String] :name
            #
            #   @option params [String, nil] :description
            #
            #   @option params [Object] :metadata
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::V2::Dataset]
            #
            def create(params)
              parsed, options = Langfuse::Models::API::Public::V2::DatasetCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/public/v2/datasets",
                body: parsed,
                model: Langfuse::Models::API::Public::V2::Dataset,
                options: options
              )
            end

            # Get a dataset
            #
            # @param dataset_name [String]
            #
            # @param params [Langfuse::Models::API::Public::V2::DatasetRetrieveParams, Hash{Symbol=>Object}] .
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::V2::Dataset]
            #
            def retrieve(dataset_name, params = {})
              @client.request(
                method: :get,
                path: ["api/public/v2/datasets/%0s", dataset_name],
                model: Langfuse::Models::API::Public::V2::Dataset,
                options: params[:request_options]
              )
            end

            # Get all datasets
            #
            # @param params [Langfuse::Models::API::Public::V2::DatasetListParams, Hash{Symbol=>Object}] .
            #
            #   @option params [Integer, nil] :limit limit of items per page
            #
            #   @option params [Integer, nil] :page page number, starts at 1
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::V2::DatasetListResponse]
            #
            def list(params = {})
              parsed, options = Langfuse::Models::API::Public::V2::DatasetListParams.dump_request(params)
              @client.request(
                method: :get,
                path: "api/public/v2/datasets",
                query: parsed,
                model: Langfuse::Models::API::Public::V2::DatasetListResponse,
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
end
