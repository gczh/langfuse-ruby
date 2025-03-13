# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Datasets
          class Runs
            # Get a dataset run and its items
            #
            # @param run_name [String]
            #
            # @param params [Langfuse::Models::API::Public::Datasets::RunRetrieveParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String] :dataset_name
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::Datasets::RunRetrieveResponse]
            #
            def retrieve(run_name, params)
              parsed, options = Langfuse::Models::API::Public::Datasets::RunRetrieveParams.dump_request(params)
              dataset_name = parsed.delete(:dataset_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
              @client.request(
                method: :get,
                path: ["api/public/datasets/%0s/runs/%1s", dataset_name, run_name],
                model: Langfuse::Models::API::Public::Datasets::RunRetrieveResponse,
                options: options
              )
            end

            # Get dataset runs
            #
            # @param dataset_name [String]
            #
            # @param params [Langfuse::Models::API::Public::Datasets::RunListParams, Hash{Symbol=>Object}] .
            #
            #   @option params [Integer, nil] :limit limit of items per page
            #
            #   @option params [Integer, nil] :page page number, starts at 1
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::Datasets::RunListResponse]
            #
            def list(dataset_name, params = {})
              parsed, options = Langfuse::Models::API::Public::Datasets::RunListParams.dump_request(params)
              @client.request(
                method: :get,
                path: ["api/public/datasets/%0s/runs", dataset_name],
                query: parsed,
                model: Langfuse::Models::API::Public::Datasets::RunListResponse,
                options: options
              )
            end

            # Delete a dataset run and all its run items. This action is irreversible.
            #
            # @param run_name [String]
            #
            # @param params [Langfuse::Models::API::Public::Datasets::RunDeleteParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String] :dataset_name
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::Datasets::RunDeleteResponse]
            #
            def delete(run_name, params)
              parsed, options = Langfuse::Models::API::Public::Datasets::RunDeleteParams.dump_request(params)
              dataset_name = parsed.delete(:dataset_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
              @client.request(
                method: :delete,
                path: ["api/public/datasets/%0s/runs/%1s", dataset_name, run_name],
                model: Langfuse::Models::API::Public::Datasets::RunDeleteResponse,
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
