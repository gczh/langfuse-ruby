# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module Datasets
          class RunRetrieveResponse < Langfuse::Models::API::Public::Datasets::DatasetRun
            sig { returns(T::Array[Langfuse::Models::API::DatasetRunItem]) }
            def dataset_run_items
            end

            sig do
              params(_: T::Array[Langfuse::Models::API::DatasetRunItem])
                .returns(T::Array[Langfuse::Models::API::DatasetRunItem])
            end
            def dataset_run_items=(_)
            end

            sig { params(dataset_run_items: T::Array[Langfuse::Models::API::DatasetRunItem]).returns(T.attached_class) }
            def self.new(dataset_run_items:)
            end

            sig { override.returns({dataset_run_items: T::Array[Langfuse::Models::API::DatasetRunItem]}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
