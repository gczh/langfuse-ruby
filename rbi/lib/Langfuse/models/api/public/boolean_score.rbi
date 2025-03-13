# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class BooleanScore < Langfuse::Models::API::Public::BaseScore
          sig { returns(String) }
          def string_value
          end

          sig { params(_: String).returns(String) }
          def string_value=(_)
          end

          sig { returns(Float) }
          def value
          end

          sig { params(_: Float).returns(Float) }
          def value=(_)
          end

          sig { params(string_value: String, value: Float).returns(T.attached_class) }
          def self.new(string_value:, value:)
          end

          sig { override.returns({string_value: String, value: Float}) }
          def to_hash
          end
        end
      end
    end
  end
end
