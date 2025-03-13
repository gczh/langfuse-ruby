# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class AnnotationQueues
          class Items
            sig do
              params(
                queue_id: String,
                object_id_: String,
                object_type: Symbol,
                status: T.nilable(Symbol),
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem)
            end
            def create(queue_id, object_id_:, object_type:, status: nil, request_options: {})
            end

            sig do
              params(
                item_id: String,
                queue_id: String,
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem)
            end
            def retrieve(item_id, queue_id:, request_options: {})
            end

            sig do
              params(
                item_id: String,
                queue_id: String,
                status: T.nilable(Symbol),
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem)
            end
            def update(item_id, queue_id:, status: nil, request_options: {})
            end

            sig do
              params(
                queue_id: String,
                limit: T.nilable(Integer),
                page: T.nilable(Integer),
                status: T.nilable(Symbol),
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::AnnotationQueues::ItemListResponse)
            end
            def list(queue_id, limit: nil, page: nil, status: nil, request_options: {})
            end

            sig do
              params(
                item_id: String,
                queue_id: String,
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::AnnotationQueues::ItemDeleteResponse)
            end
            def delete(item_id, queue_id:, request_options: {})
            end

            sig { params(client: Langfuse::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
