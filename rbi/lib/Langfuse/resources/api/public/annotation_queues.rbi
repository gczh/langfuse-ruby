# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class AnnotationQueues
          sig { returns(Langfuse::Resources::API::Public::AnnotationQueues::Items) }
          def items
          end

          sig do
            params(
              queue_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::AnnotationQueue)
          end
          def retrieve(queue_id, request_options: {})
          end

          sig do
            params(
              limit: T.nilable(Integer),
              page: T.nilable(Integer),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::AnnotationQueueListResponse)
          end
          def list(limit: nil, page: nil, request_options: {})
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
