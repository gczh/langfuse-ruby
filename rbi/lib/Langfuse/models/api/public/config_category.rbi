# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ConfigCategory < Langfuse::BaseModel
          sig { returns(String) }
          def label
          end

          sig { params(_: String).returns(String) }
          def label=(_)
          end

          sig { returns(Float) }
          def value
          end

          sig { params(_: Float).returns(Float) }
          def value=(_)
          end

          sig { params(label: String, value: Float).returns(T.attached_class) }
          def self.new(label:, value:)
          end

          sig { override.returns({label: String, value: Float}) }
          def to_hash
          end
        end
      end
    end
  end
end
