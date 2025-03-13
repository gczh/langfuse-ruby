# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class PromptUpdateLabelsParams < Langfuse::BaseModel
            extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Array[String]) }
            def new_labels
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def new_labels=(_)
            end

            sig do
              params(
                name: String,
                new_labels: T::Array[String],
                request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .returns(T.attached_class)
            end
            def self.new(name:, new_labels:, request_options: {})
            end

            sig do
              override.returns(
                {
                  name: String,
                  new_labels: T::Array[String],
                  request_options: Langfuse::RequestOptions
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
