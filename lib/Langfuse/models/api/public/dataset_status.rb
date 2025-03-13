# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        # @abstract
        #
        class DatasetStatus < Langfuse::Enum
          ACTIVE = :ACTIVE
          ARCHIVED = :ARCHIVED

          finalize!
        end
      end
    end
  end
end
