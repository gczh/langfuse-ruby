# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class NumericScore < Langfuse::Models::API::Public::BaseScore
          sig { returns(Float) }
          def value
          end

          sig { params(_: Float).returns(Float) }
          def value=(_)
          end

          sig { params(value: Float).returns(T.attached_class) }
          def self.new(value:)
          end

          sig { override.returns({value: Float}) }
          def to_hash
          end
        end
      end
    end
  end
end
