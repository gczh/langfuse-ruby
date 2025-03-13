# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Datasets
          class Runs
            sig do
              params(
                run_name: String,
                dataset_name: String,
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::Datasets::RunRetrieveResponse)
            end
            def retrieve(run_name, dataset_name:, request_options: {})
            end

            sig do
              params(
                dataset_name: String,
                limit: T.nilable(Integer),
                page: T.nilable(Integer),
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::Datasets::RunListResponse)
            end
            def list(dataset_name, limit: nil, page: nil, request_options: {})
            end

            sig do
              params(
                run_name: String,
                dataset_name: String,
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::Datasets::RunDeleteResponse)
            end
            def delete(run_name, dataset_name:, request_options: {})
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
