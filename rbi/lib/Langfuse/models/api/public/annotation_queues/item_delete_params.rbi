# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          class ItemDeleteParams < Langfuse::BaseModel
            extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            sig { returns(String) }
            def queue_id
            end

            sig { params(_: String).returns(String) }
            def queue_id=(_)
            end

            sig do
              params(
                queue_id: String,
                request_options: T.any(
                  Langfuse::RequestOptions,
                  T::Hash[Symbol, T.anything]
                )
              )
                .returns(T.attached_class)
            end
            def self.new(queue_id:, request_options: {})
            end

            sig { override.returns({queue_id: String, request_options: Langfuse::RequestOptions}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
