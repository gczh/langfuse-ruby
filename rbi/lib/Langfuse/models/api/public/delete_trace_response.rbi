# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class DeleteTraceResponse < Langfuse::BaseModel
          sig { returns(String) }
          def message
          end

          sig { params(_: String).returns(String) }
          def message=(_)
          end

          sig { params(message: String).returns(T.attached_class) }
          def self.new(message:)
          end

          sig { override.returns({message: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
