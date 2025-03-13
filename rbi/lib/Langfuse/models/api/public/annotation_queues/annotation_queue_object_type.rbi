# typed: strong

module Langfuse
  module Models
    module API
      module Public
        AnnotationQueueObjectType = T.type_alias { AnnotationQueues::AnnotationQueueObjectType }

        module AnnotationQueues
          class AnnotationQueueObjectType < Langfuse::Enum
            abstract!

            TRACE = :TRACE
            OBSERVATION = :OBSERVATION

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
