# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          class ItemCreateParams < Langfuse::BaseModel
            extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            sig { returns(String) }
            def object_id_
            end

            sig { params(_: String).returns(String) }
            def object_id_=(_)
            end

            sig { returns(Symbol) }
            def object_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def object_type=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def status
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def status=(_)
            end

            sig do
              params(
                object_id_: String,
                object_type: Symbol,
                status: T.nilable(Symbol),
                request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .returns(T.attached_class)
            end
            def self.new(object_id_:, object_type:, status: nil, request_options: {})
            end

            sig do
              override
                .returns(
                  {
                    object_id_: String,
                    object_type: Symbol,
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
