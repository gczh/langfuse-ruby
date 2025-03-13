# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ObservationsView < Langfuse::BaseModel
          # @!attribute id
          #   The unique identifier of the observation
          #
          #   @return [String]
          required :id, String

          # @!attribute level
          #   The level of the observation
          #
          #   @return [Symbol, Langfuse::Models::API::Public::ObservationLevel]
          required :level, enum: -> { Langfuse::Models::API::Public::ObservationLevel }

          # @!attribute start_time
          #   The start time of the observation
          #
          #   @return [Time]
          required :start_time, Time, api_name: :startTime

          # @!attribute type
          #   The type of the observation
          #
          #   @return [String]
          required :type, String

          # @!attribute calculated_input_cost
          #   (Deprecated. Use usageDetails and costDetails instead.) The calculated cost of
          #     the input in USD
          #
          #   @return [Float, nil]
          optional :calculated_input_cost, Float, api_name: :calculatedInputCost, nil?: true

          # @!attribute calculated_output_cost
          #   (Deprecated. Use usageDetails and costDetails instead.) The calculated cost of
          #     the output in USD
          #
          #   @return [Float, nil]
          optional :calculated_output_cost, Float, api_name: :calculatedOutputCost, nil?: true

          # @!attribute calculated_total_cost
          #   (Deprecated. Use usageDetails and costDetails instead.) The calculated total
          #     cost in USD
          #
          #   @return [Float, nil]
          optional :calculated_total_cost, Float, api_name: :calculatedTotalCost, nil?: true

          # @!attribute completion_start_time
          #   The completion start time of the observation
          #
          #   @return [Time, nil]
          optional :completion_start_time, Time, api_name: :completionStartTime, nil?: true

          # @!attribute cost_details
          #   The cost details of the observation. Key is the name of the cost metric, value
          #     is the cost in USD. The total key is the sum of all (non-total) cost metrics or
          #     the total value ingested.
          #
          #   @return [Hash{Symbol=>Float}, nil]
          optional :cost_details, Langfuse::HashOf[Float], api_name: :costDetails, nil?: true

          # @!attribute end_time
          #   The end time of the observation.
          #
          #   @return [Time, nil]
          optional :end_time, Time, api_name: :endTime, nil?: true

          # @!attribute environment
          #   The environment from which this observation originated. Can be any lowercase
          #     alphanumeric string with hyphens and underscores that does not start with
          #     'langfuse'.
          #
          #   @return [String, nil]
          optional :environment, String, nil?: true

          # @!attribute [r] input
          #   The input data of the observation
          #
          #   @return [Object, nil]
          optional :input, Langfuse::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :input

          # @!attribute input_price
          #   The price of the input in USD
          #
          #   @return [Float, nil]
          optional :input_price, Float, api_name: :inputPrice, nil?: true

          # @!attribute latency
          #   The latency in seconds.
          #
          #   @return [Float, nil]
          optional :latency, Float, nil?: true

          # @!attribute [r] metadata
          #   Additional metadata of the observation
          #
          #   @return [Object, nil]
          optional :metadata, Langfuse::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :metadata

          # @!attribute model
          #   The model used for the observation
          #
          #   @return [String, nil]
          optional :model, String, nil?: true

          # @!attribute model_id
          #   The unique identifier of the model
          #
          #   @return [String, nil]
          optional :model_id, String, api_name: :modelId, nil?: true

          # @!attribute model_parameters
          #   The parameters of the model used for the observation
          #
          #   @return [Hash{Symbol=>String, Integer, Boolean, Array<String>, nil}, nil]
          optional :model_parameters,
                   -> { Langfuse::HashOf[union: Langfuse::Models::API::Public::ObservationsView::ModelParameter, nil?: true] },
                   api_name: :modelParameters,
                   nil?: true

          # @!attribute name
          #   The name of the observation
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute [r] output
          #   The output data of the observation
          #
          #   @return [Object, nil]
          optional :output, Langfuse::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :output

          # @!attribute output_price
          #   The price of the output in USD.
          #
          #   @return [Float, nil]
          optional :output_price, Float, api_name: :outputPrice, nil?: true

          # @!attribute parent_observation_id
          #   The parent observation ID
          #
          #   @return [String, nil]
          optional :parent_observation_id, String, api_name: :parentObservationId, nil?: true

          # @!attribute prompt_id
          #   The prompt ID associated with the observation
          #
          #   @return [String, nil]
          optional :prompt_id, String, api_name: :promptId, nil?: true

          # @!attribute prompt_name
          #   The name of the prompt associated with the observation
          #
          #   @return [String, nil]
          optional :prompt_name, String, api_name: :promptName, nil?: true

          # @!attribute prompt_version
          #   The version of the prompt associated with the observation
          #
          #   @return [Integer, nil]
          optional :prompt_version, Integer, api_name: :promptVersion, nil?: true

          # @!attribute status_message
          #   The status message of the observation
          #
          #   @return [String, nil]
          optional :status_message, String, api_name: :statusMessage, nil?: true

          # @!attribute time_to_first_token
          #   The time to the first token in seconds
          #
          #   @return [Float, nil]
          optional :time_to_first_token, Float, api_name: :timeToFirstToken, nil?: true

          # @!attribute total_price
          #   The total price in USD.
          #
          #   @return [Float, nil]
          optional :total_price, Float, api_name: :totalPrice, nil?: true

          # @!attribute trace_id
          #   The trace ID associated with the observation
          #
          #   @return [String, nil]
          optional :trace_id, String, api_name: :traceId, nil?: true

          # @!attribute usage
          #   (Deprecated. Use usageDetails and costDetails instead.) The usage data of the
          #     observation
          #
          #   @return [Langfuse::Models::API::Public::Usage, nil]
          optional :usage, -> { Langfuse::Models::API::Public::Usage }, nil?: true

          # @!attribute usage_details
          #   The usage details of the observation. Key is the name of the usage metric, value
          #     is the number of units consumed. The total key is the sum of all (non-total)
          #     usage metrics or the total value ingested.
          #
          #   @return [Hash{Symbol=>Integer}, nil]
          optional :usage_details, Langfuse::HashOf[Integer], api_name: :usageDetails, nil?: true

          # @!attribute version
          #   The version of the observation
          #
          #   @return [String, nil]
          optional :version, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param level [Symbol, Langfuse::Models::API::Public::ObservationLevel]
          #   # @param start_time [Time]
          #   # @param type [String]
          #   # @param calculated_input_cost [Float, nil]
          #   # @param calculated_output_cost [Float, nil]
          #   # @param calculated_total_cost [Float, nil]
          #   # @param completion_start_time [Time, nil]
          #   # @param cost_details [Hash{Symbol=>Float}, nil]
          #   # @param end_time [Time, nil]
          #   # @param environment [String, nil]
          #   # @param input [Object]
          #   # @param input_price [Float, nil]
          #   # @param latency [Float, nil]
          #   # @param metadata [Object]
          #   # @param model [String, nil]
          #   # @param model_id [String, nil]
          #   # @param model_parameters [Hash{Symbol=>String, Integer, Boolean, Array<String>, nil}, nil]
          #   # @param name [String, nil]
          #   # @param output [Object]
          #   # @param output_price [Float, nil]
          #   # @param parent_observation_id [String, nil]
          #   # @param prompt_id [String, nil]
          #   # @param prompt_name [String, nil]
          #   # @param prompt_version [Integer, nil]
          #   # @param status_message [String, nil]
          #   # @param time_to_first_token [Float, nil]
          #   # @param total_price [Float, nil]
          #   # @param trace_id [String, nil]
          #   # @param usage [Langfuse::Models::API::Public::Usage, nil]
          #   # @param usage_details [Hash{Symbol=>Integer}, nil]
          #   # @param version [String, nil]
          #   #
          #   def initialize(
          #     id:,
          #     level:,
          #     start_time:,
          #     type:,
          #     calculated_input_cost: nil,
          #     calculated_output_cost: nil,
          #     calculated_total_cost: nil,
          #     completion_start_time: nil,
          #     cost_details: nil,
          #     end_time: nil,
          #     environment: nil,
          #     input: nil,
          #     input_price: nil,
          #     latency: nil,
          #     metadata: nil,
          #     model: nil,
          #     model_id: nil,
          #     model_parameters: nil,
          #     name: nil,
          #     output: nil,
          #     output_price: nil,
          #     parent_observation_id: nil,
          #     prompt_id: nil,
          #     prompt_name: nil,
          #     prompt_version: nil,
          #     status_message: nil,
          #     time_to_first_token: nil,
          #     total_price: nil,
          #     trace_id: nil,
          #     usage: nil,
          #     usage_details: nil,
          #     version: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Langfuse::BaseModel) -> void

          # @abstract
          #
          class ModelParameter < Langfuse::Union
            StringArray = Langfuse::ArrayOf[String]

            variant String

            variant Integer

            variant Langfuse::BooleanModel

            variant Langfuse::Models::API::Public::ObservationsView::ModelParameter::StringArray
          end
        end
      end
    end
  end
end
