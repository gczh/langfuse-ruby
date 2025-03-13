# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class NumericScore < Langfuse::Models::API::Public::BaseScore
          # @!attribute value
          #   The numeric value of the score
          #
          #   @return [Float]
          required :value, Float

          # @!parse
          #   # @param value [Float]
          #   #
          #   def initialize(value:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
