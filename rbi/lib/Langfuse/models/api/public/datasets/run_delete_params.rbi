# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module Datasets
          class RunDeleteParams < Langfuse::BaseModel
            extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            sig { returns(String) }
            def dataset_name
            end

            sig { params(_: String).returns(String) }
            def dataset_name=(_)
            end

            sig do
              params(
                dataset_name: String,
                request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .returns(T.attached_class)
            end
            def self.new(dataset_name:, request_options: {})
            end

            sig { override.returns({dataset_name: String, request_options: Langfuse::RequestOptions}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
