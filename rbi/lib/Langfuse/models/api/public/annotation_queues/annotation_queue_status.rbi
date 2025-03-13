# typed: strong

module Langfuse
  module Models
    module API
      module Public
        AnnotationQueueStatus = T.type_alias { AnnotationQueues::AnnotationQueueStatus }

        module AnnotationQueues
          class AnnotationQueueStatus < Langfuse::Enum
            abstract!

            PENDING = :PENDING
            COMPLETED = :COMPLETED

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
