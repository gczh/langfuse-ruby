# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class CategoricalScore < Langfuse::Models::API::Public::BaseScore
          # @!attribute string_value
          #   The string representation of the score value. If no config is linked, can be any
          #     string. Otherwise, must map to a config category
          #
          #   @return [String]
          required :string_value, String, api_name: :stringValue

          # @!attribute value
          #   Only defined if a config is linked. Represents the numeric category mapping of
          #     the stringValue
          #
          #   @return [Float, nil]
          optional :value, Float, nil?: true

          # @!parse
          #   # @param string_value [String]
          #   # @param value [Float, nil]
          #   #
          #   def initialize(string_value:, value: nil, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
