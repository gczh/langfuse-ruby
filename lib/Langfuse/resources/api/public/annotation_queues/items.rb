# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class AnnotationQueues
          class Items
            # Add an item to an annotation queue
            #
            # @param queue_id [String] The unique identifier of the annotation queue
            #
            # @param params [Langfuse::Models::API::Public::AnnotationQueues::ItemCreateParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String] :object_id_
            #
            #   @option params [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueObjectType] :object_type
            #
            #   @option params [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus, nil] :status Defaults to PENDING for new queue items
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem]
            #
            def create(queue_id, params)
              parsed, options = Langfuse::Models::API::Public::AnnotationQueues::ItemCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["api/public/annotation-queues/%0s/items", queue_id],
                body: parsed,
                model: Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem,
                options: options
              )
            end

            # Get a specific item from an annotation queue
            #
            # @param item_id [String] The unique identifier of the annotation queue item
            #
            # @param params [Langfuse::Models::API::Public::AnnotationQueues::ItemRetrieveParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String] :queue_id The unique identifier of the annotation queue
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem]
            #
            def retrieve(item_id, params)
              parsed, options = Langfuse::Models::API::Public::AnnotationQueues::ItemRetrieveParams.dump_request(params)
              queue_id = parsed.delete(:queue_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
              @client.request(
                method: :get,
                path: ["api/public/annotation-queues/%0s/items/%1s", queue_id, item_id],
                model: Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem,
                options: options
              )
            end

            # Update an annotation queue item
            #
            # @param item_id [String] Path param: The unique identifier of the annotation queue item
            #
            # @param params [Langfuse::Models::API::Public::AnnotationQueues::ItemUpdateParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String] :queue_id Path param: The unique identifier of the annotation queue
            #
            #   @option params [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus, nil] :status Body param:
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem]
            #
            def update(item_id, params)
              parsed, options = Langfuse::Models::API::Public::AnnotationQueues::ItemUpdateParams.dump_request(params)
              queue_id = parsed.delete(:queue_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
              @client.request(
                method: :patch,
                path: ["api/public/annotation-queues/%0s/items/%1s", queue_id, item_id],
                body: parsed,
                model: Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem,
                options: options
              )
            end

            # Get items for a specific annotation queue
            #
            # @param queue_id [String] The unique identifier of the annotation queue
            #
            # @param params [Langfuse::Models::API::Public::AnnotationQueues::ItemListParams, Hash{Symbol=>Object}] .
            #
            #   @option params [Integer, nil] :limit limit of items per page
            #
            #   @option params [Integer, nil] :page page number, starts at 1
            #
            #   @option params [Symbol, Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus, nil] :status Filter by status
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::AnnotationQueues::ItemListResponse]
            #
            def list(queue_id, params = {})
              parsed, options = Langfuse::Models::API::Public::AnnotationQueues::ItemListParams.dump_request(params)
              @client.request(
                method: :get,
                path: ["api/public/annotation-queues/%0s/items", queue_id],
                query: parsed,
                model: Langfuse::Models::API::Public::AnnotationQueues::ItemListResponse,
                options: options
              )
            end

            # Remove an item from an annotation queue
            #
            # @param item_id [String] The unique identifier of the annotation queue item
            #
            # @param params [Langfuse::Models::API::Public::AnnotationQueues::ItemDeleteParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String] :queue_id The unique identifier of the annotation queue
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::AnnotationQueues::ItemDeleteResponse]
            #
            def delete(item_id, params)
              parsed, options = Langfuse::Models::API::Public::AnnotationQueues::ItemDeleteParams.dump_request(params)
              queue_id = parsed.delete(:queue_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
              @client.request(
                method: :delete,
                path: ["api/public/annotation-queues/%0s/items/%1s", queue_id, item_id],
                model: Langfuse::Models::API::Public::AnnotationQueues::ItemDeleteResponse,
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
