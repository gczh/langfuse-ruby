# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          # @abstract
          #
          class AnnotationQueueObjectType < Langfuse::Enum
            TRACE = :TRACE
            OBSERVATION = :OBSERVATION

            finalize!
          end
        end

        AnnotationQueueObjectType = AnnotationQueues::AnnotationQueueObjectType
      end
    end
  end
end
