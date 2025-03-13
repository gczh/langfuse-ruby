# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class BooleanScore < Langfuse::Models::API::Public::BaseScore
          # @!attribute string_value
          #   The string representation of the score value. Is inferred from the numeric value
          #     and equals "True" or "False"
          #
          #   @return [String]
          required :string_value, String, api_name: :stringValue

          # @!attribute value
          #   The numeric value of the score. Equals 1 for "True" and 0 for "False"
          #
          #   @return [Float]
          required :value, Float

          # @!parse
          #   # @param string_value [String]
          #   # @param value [Float]
          #   #
          #   def initialize(string_value:, value:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
