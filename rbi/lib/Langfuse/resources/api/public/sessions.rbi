# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Sessions
          sig do
            params(
              session_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::SessionRetrieveResponse)
          end
          def retrieve(session_id, request_options: {})
          end

          sig do
            params(
              environment: T::Array[T.nilable(String)],
              from_timestamp: T.nilable(Time),
              limit: T.nilable(Integer),
              page: T.nilable(Integer),
              to_timestamp: T.nilable(Time),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::SessionListResponse)
          end
          def list(
            environment: nil,
            from_timestamp: nil,
            limit: nil,
            page: nil,
            to_timestamp: nil,
            request_options: {}
          )
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
