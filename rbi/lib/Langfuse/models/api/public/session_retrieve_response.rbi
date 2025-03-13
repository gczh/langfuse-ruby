# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class SessionRetrieveResponse < Langfuse::Models::API::Public::Session
          sig { returns(T::Array[Langfuse::Models::API::Public::Trace]) }
          def traces
          end

          sig do
            params(_: T::Array[Langfuse::Models::API::Public::Trace])
              .returns(T::Array[Langfuse::Models::API::Public::Trace])
          end
          def traces=(_)
          end

          sig { params(traces: T::Array[Langfuse::Models::API::Public::Trace]).returns(T.attached_class) }
          def self.new(traces:)
          end

          sig { override.returns({traces: T::Array[Langfuse::Models::API::Public::Trace]}) }
          def to_hash
          end
        end
      end
    end
  end
end
