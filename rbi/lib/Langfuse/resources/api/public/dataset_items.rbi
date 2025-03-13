# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class DatasetItems
          sig do
            params(
              dataset_name: String,
              id: T.nilable(String),
              expected_output: T.anything,
              input: T.anything,
              metadata: T.anything,
              source_observation_id: T.nilable(String),
              source_trace_id: T.nilable(String),
              status: T.nilable(Symbol),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::DatasetItem)
          end
          def create(
            dataset_name:,
            id: nil,
            expected_output: nil,
            input: nil,
            metadata: nil,
            source_observation_id: nil,
            source_trace_id: nil,
            status: nil,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::DatasetItem)
          end
          def retrieve(id, request_options: {})
          end

          sig do
            params(
              dataset_name: T.nilable(String),
              limit: T.nilable(Integer),
              page: T.nilable(Integer),
              source_observation_id: T.nilable(String),
              source_trace_id: T.nilable(String),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::DatasetItemListResponse)
          end
          def list(
            dataset_name: nil,
            limit: nil,
            page: nil,
            source_observation_id: nil,
            source_trace_id: nil,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::DatasetItemDeleteResponse)
          end
          def delete(id, request_options: {})
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
