# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          class ItemUpdateParams < Langfuse::BaseModel
            extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            sig { returns(String) }
            def queue_id
            end

            sig { params(_: String).returns(String) }
            def queue_id=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def status
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def status=(_)
            end

            sig do
              params(
                queue_id: String,
                status: T.nilable(Symbol),
                request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .returns(T.attached_class)
            end
            def self.new(queue_id:, status: nil, request_options: {})
            end

            sig do
              override.returns(
                {
                  queue_id: String,
                  status: T.nilable(Symbol),
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
