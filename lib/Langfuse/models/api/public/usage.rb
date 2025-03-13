# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class Usage < Langfuse::BaseModel
          # @!attribute input
          #   Number of input units (e.g. tokens)
          #
          #   @return [Integer, nil]
          optional :input, Integer, nil?: true

          # @!attribute input_cost
          #   USD input cost
          #
          #   @return [Float, nil]
          optional :input_cost, Float, api_name: :inputCost, nil?: true

          # @!attribute output
          #   Number of output units (e.g. tokens)
          #
          #   @return [Integer, nil]
          optional :output, Integer, nil?: true

          # @!attribute output_cost
          #   USD output cost
          #
          #   @return [Float, nil]
          optional :output_cost, Float, api_name: :outputCost, nil?: true

          # @!attribute total
          #   Defaults to input+output if not set
          #
          #   @return [Integer, nil]
          optional :total, Integer, nil?: true

          # @!attribute total_cost
          #   USD total cost, defaults to input+output
          #
          #   @return [Float, nil]
          optional :total_cost, Float, api_name: :totalCost, nil?: true

          # @!attribute unit
          #   Unit of usage in Langfuse
          #
          #   @return [Symbol, Langfuse::Models::API::Public::ModelUsageUnit, nil]
          optional :unit, enum: -> { Langfuse::Models::API::Public::ModelUsageUnit }, nil?: true

          # @!parse
          #   # (Deprecated. Use usageDetails and costDetails instead.) Standard interface for
          #   #   usage and cost
          #   #
          #   # @param input [Integer, nil]
          #   # @param input_cost [Float, nil]
          #   # @param output [Integer, nil]
          #   # @param output_cost [Float, nil]
          #   # @param total [Integer, nil]
          #   # @param total_cost [Float, nil]
          #   # @param unit [Symbol, Langfuse::Models::API::Public::ModelUsageUnit, nil]
          #   #
          #   def initialize(input: nil, input_cost: nil, output: nil, output_cost: nil, total: nil, total_cost: nil, unit: nil, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
