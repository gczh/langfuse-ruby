# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class V2
          class Datasets
            sig do
              params(
                name: String,
                description: T.nilable(String),
                metadata: T.anything,
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::V2::Dataset)
            end
            def create(name:, description: nil, metadata: nil, request_options: {})
            end

            sig do
              params(
                dataset_name: String,
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::V2::Dataset)
            end
            def retrieve(dataset_name, request_options: {})
            end

            sig do
              params(
                limit: T.nilable(Integer),
                page: T.nilable(Integer),
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::V2::DatasetListResponse)
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
end
