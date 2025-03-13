# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Metrics
          sig do
            params(
              environment: T::Array[T.nilable(String)],
              from_timestamp: T.nilable(Time),
              limit: T.nilable(Integer),
              page: T.nilable(Integer),
              tags: T::Array[T.nilable(String)],
              to_timestamp: T.nilable(Time),
              trace_name: T.nilable(String),
              user_id: T.nilable(String),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::MetricGetDailyResponse)
          end
          def get_daily(
            environment: nil,
            from_timestamp: nil,
            limit: nil,
            page: nil,
            tags: nil,
            to_timestamp: nil,
            trace_name: nil,
            user_id: nil,
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
