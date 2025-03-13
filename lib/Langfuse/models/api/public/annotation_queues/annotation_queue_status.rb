# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module AnnotationQueues
          # @abstract
          #
          class AnnotationQueueStatus < Langfuse::Enum
            PENDING = :PENDING
            COMPLETED = :COMPLETED

            finalize!
          end
        end

        AnnotationQueueStatus = AnnotationQueues::AnnotationQueueStatus
      end
    end
  end
end
