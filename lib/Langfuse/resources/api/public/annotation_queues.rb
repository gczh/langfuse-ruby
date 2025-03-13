# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class AnnotationQueues
          # @return [Langfuse::Resources::API::Public::AnnotationQueues::Items]
          attr_reader :items

          # Get an annotation queue by ID
          #
          # @param queue_id [String] The unique identifier of the annotation queue
          #
          # @param params [Langfuse::Models::API::Public::AnnotationQueueRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::AnnotationQueue]
          #
          def retrieve(queue_id, params = {})
            @client.request(
              method: :get,
              path: ["api/public/annotation-queues/%0s", queue_id],
              model: Langfuse::Models::API::Public::AnnotationQueue,
              options: params[:request_options]
            )
          end

          # Get all annotation queues
          #
          # @param params [Langfuse::Models::API::Public::AnnotationQueueListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Integer, nil] :limit limit of items per page
          #
          #   @option params [Integer, nil] :page page number, starts at 1
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::AnnotationQueueListResponse]
          #
          def list(params = {})
            parsed, options = Langfuse::Models::API::Public::AnnotationQueueListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/public/annotation-queues",
              query: parsed,
              model: Langfuse::Models::API::Public::AnnotationQueueListResponse,
              options: options
            )
          end

          # @param client [Langfuse::Client]
          #
          def initialize(client:)
            @client = client
            @items = Langfuse::Resources::API::Public::AnnotationQueues::Items.new(client: client)
          end
        end
      end
    end
  end
end
