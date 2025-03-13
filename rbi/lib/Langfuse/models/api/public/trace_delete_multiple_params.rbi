# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class TraceDeleteMultipleParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(T::Array[String]) }
          def trace_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def trace_ids=(_)
          end

          sig do
            params(
              trace_ids: T::Array[String],
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(trace_ids:, request_options: {})
          end

          sig { override.returns({trace_ids: T::Array[String], request_options: Langfuse::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
