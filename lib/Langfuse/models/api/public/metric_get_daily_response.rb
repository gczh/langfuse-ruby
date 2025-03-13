# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class MetricGetDailyResponse < Langfuse::BaseModel
          # @!attribute data
          #   A list of daily metrics, only days with ingested data are included.
          #
          #   @return [Array<Langfuse::Models::API::Public::MetricGetDailyResponse::Data>]
          required :data, -> { Langfuse::ArrayOf[Langfuse::Models::API::Public::MetricGetDailyResponse::Data] }

          # @!attribute meta
          #
          #   @return [Langfuse::Models::API::Public::UtilsMetaResponse]
          required :meta, -> { Langfuse::Models::API::Public::UtilsMetaResponse }

          # @!parse
          #   # @param data [Array<Langfuse::Models::API::Public::MetricGetDailyResponse::Data>]
          #   # @param meta [Langfuse::Models::API::Public::UtilsMetaResponse]
          #   #
          #   def initialize(data:, meta:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void

          class Data < Langfuse::BaseModel
            # @!attribute count_observations
            #
            #   @return [Integer]
            required :count_observations, Integer, api_name: :countObservations

            # @!attribute count_traces
            #
            #   @return [Integer]
            required :count_traces, Integer, api_name: :countTraces

            # @!attribute date
            #
            #   @return [Date]
            required :date, Date

            # @!attribute total_cost
            #   Total model cost in USD
            #
            #   @return [Float]
            required :total_cost, Float, api_name: :totalCost

            # @!attribute usage
            #
            #   @return [Array<Langfuse::Models::API::Public::MetricGetDailyResponse::Data::Usage>]
            required :usage,
                     -> { Langfuse::ArrayOf[Langfuse::Models::API::Public::MetricGetDailyResponse::Data::Usage] }

            # @!parse
            #   # @param count_observations [Integer]
            #   # @param count_traces [Integer]
            #   # @param date [Date]
            #   # @param total_cost [Float]
            #   # @param usage [Array<Langfuse::Models::API::Public::MetricGetDailyResponse::Data::Usage>]
            #   #
            #   def initialize(count_observations:, count_traces:, date:, total_cost:, usage:, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            class Usage < Langfuse::BaseModel
              # @!attribute count_observations
              #
              #   @return [Integer]
              required :count_observations, Integer, api_name: :countObservations

              # @!attribute count_traces
              #
              #   @return [Integer]
              required :count_traces, Integer, api_name: :countTraces

              # @!attribute input_usage
              #   Total number of generation input units (e.g. tokens)
              #
              #   @return [Integer]
              required :input_usage, Integer, api_name: :inputUsage

              # @!attribute output_usage
              #   Total number of generation output units (e.g. tokens)
              #
              #   @return [Integer]
              required :output_usage, Integer, api_name: :outputUsage

              # @!attribute total_cost
              #   Total model cost in USD
              #
              #   @return [Float]
              required :total_cost, Float, api_name: :totalCost

              # @!attribute total_usage
              #   Total number of generation total units (e.g. tokens)
              #
              #   @return [Integer]
              required :total_usage, Integer, api_name: :totalUsage

              # @!attribute model
              #
              #   @return [String, nil]
              optional :model, String, nil?: true

              # @!parse
              #   # Daily usage of a given model. Usage corresponds to the unit set for the specific
              #   #   model (e.g. tokens).
              #   #
              #   # @param count_observations [Integer]
              #   # @param count_traces [Integer]
              #   # @param input_usage [Integer]
              #   # @param output_usage [Integer]
              #   # @param total_cost [Float]
              #   # @param total_usage [Integer]
              #   # @param model [String, nil]
              #   #
              #   def initialize(count_observations:, count_traces:, input_usage:, output_usage:, total_cost:, total_usage:, model: nil, **) = super

              # def initialize: (Hash | Langfuse::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
