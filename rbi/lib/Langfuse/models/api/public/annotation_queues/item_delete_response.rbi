# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          class ItemDeleteResponse < Langfuse::BaseModel
            sig { returns(String) }
            def message
            end

            sig { params(_: String).returns(String) }
            def message=(_)
            end

            sig { returns(T::Boolean) }
            def success
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def success=(_)
            end

            sig { params(message: String, success: T::Boolean).returns(T.attached_class) }
            def self.new(message:, success:)
            end

            sig { override.returns({message: String, success: T::Boolean}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
