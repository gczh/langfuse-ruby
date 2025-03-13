# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Traces
          sig do
            params(
              trace_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::TraceRetrieveResponse)
          end
          def retrieve(trace_id, request_options: {})
          end

          sig do
            params(
              environment: T::Array[T.nilable(String)],
              from_timestamp: T.nilable(Time),
              limit: T.nilable(Integer),
              name: T.nilable(String),
              order_by: T.nilable(String),
              page: T.nilable(Integer),
              release: T.nilable(String),
              session_id: T.nilable(String),
              tags: T::Array[T.nilable(String)],
              to_timestamp: T.nilable(Time),
              user_id: T.nilable(String),
              version: T.nilable(String),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::TraceListResponse)
          end
          def list(
            environment: nil,
            from_timestamp: nil,
            limit: nil,
            name: nil,
            order_by: nil,
            page: nil,
            release: nil,
            session_id: nil,
            tags: nil,
            to_timestamp: nil,
            user_id: nil,
            version: nil,
            request_options: {}
          )
          end

          sig do
            params(
              trace_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::DeleteTraceResponse)
          end
          def delete(trace_id, request_options: {})
          end

          sig do
            params(
              trace_ids: T::Array[String],
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::DeleteTraceResponse)
          end
          def delete_multiple(trace_ids:, request_options: {})
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
