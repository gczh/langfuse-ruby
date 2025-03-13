# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ConfigCategory < Langfuse::BaseModel
          # @!attribute label
          #
          #   @return [String]
          required :label, String

          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!parse
          #   # @param label [String]
          #   # @param value [Float]
          #   #
          #   def initialize(label:, value:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
