# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        # @abstract
        #
        class ObservationLevel < Langfuse::Enum
          DEBUG = :DEBUG
          DEFAULT = :DEFAULT
          WARNING = :WARNING
          ERROR = :ERROR

          finalize!
        end
      end
    end
  end
end
