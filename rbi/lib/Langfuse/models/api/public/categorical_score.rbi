# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class CategoricalScore < Langfuse::Models::API::Public::BaseScore
          sig { returns(String) }
          def string_value
          end

          sig { params(_: String).returns(String) }
          def string_value=(_)
          end

          sig { returns(T.nilable(Float)) }
          def value
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def value=(_)
          end

          sig { params(string_value: String, value: T.nilable(Float)).returns(T.attached_class) }
          def self.new(string_value:, value: nil)
          end

          sig { override.returns({string_value: String, value: T.nilable(Float)}) }
          def to_hash
          end
        end
      end
    end
  end
end
