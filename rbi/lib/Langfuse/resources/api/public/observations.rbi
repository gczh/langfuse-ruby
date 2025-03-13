# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Observations
          sig do
            params(
              observation_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::ObservationsView)
          end
          def retrieve(observation_id, request_options: {})
          end

          sig do
            params(
              environment: T::Array[T.nilable(String)],
              from_start_time: T.nilable(Time),
              limit: T.nilable(Integer),
              name: T.nilable(String),
              page: T.nilable(Integer),
              parent_observation_id: T.nilable(String),
              to_start_time: T.nilable(Time),
              trace_id: T.nilable(String),
              type: T.nilable(String),
              user_id: T.nilable(String),
              version: T.nilable(String),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::ObservationListResponse)
          end
          def list(
            environment: nil,
            from_start_time: nil,
            limit: nil,
            name: nil,
            page: nil,
            parent_observation_id: nil,
            to_start_time: nil,
            trace_id: nil,
            type: nil,
            user_id: nil,
            version: nil,
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
