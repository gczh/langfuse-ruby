# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class OptionalObservationBody < Langfuse::BaseModel
        # @!attribute environment
        #
        #   @return [String, nil]
        optional :environment, String, nil?: true

        # @!attribute [r] input
        #
        #   @return [Object, nil]
        optional :input, Langfuse::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :input

        # @!attribute level
        #
        #   @return [Symbol, Langfuse::Models::API::Public::ObservationLevel, nil]
        optional :level, enum: -> { Langfuse::Models::API::Public::ObservationLevel }, nil?: true

        # @!attribute [r] metadata
        #
        #   @return [Object, nil]
        optional :metadata, Langfuse::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :metadata

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute [r] output
        #
        #   @return [Object, nil]
        optional :output, Langfuse::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :output

        # @!attribute parent_observation_id
        #
        #   @return [String, nil]
        optional :parent_observation_id, String, api_name: :parentObservationId, nil?: true

        # @!attribute start_time
        #
        #   @return [Time, nil]
        optional :start_time, Time, api_name: :startTime, nil?: true

        # @!attribute status_message
        #
        #   @return [String, nil]
        optional :status_message, String, api_name: :statusMessage, nil?: true

        # @!attribute trace_id
        #
        #   @return [String, nil]
        optional :trace_id, String, api_name: :traceId, nil?: true

        # @!attribute version
        #
        #   @return [String, nil]
        optional :version, String, nil?: true

        # @!parse
        #   # @param environment [String, nil]
        #   # @param input [Object]
        #   # @param level [Symbol, Langfuse::Models::API::Public::ObservationLevel, nil]
        #   # @param metadata [Object]
        #   # @param name [String, nil]
        #   # @param output [Object]
        #   # @param parent_observation_id [String, nil]
        #   # @param start_time [Time, nil]
        #   # @param status_message [String, nil]
        #   # @param trace_id [String, nil]
        #   # @param version [String, nil]
        #   #
        #   def initialize(
        #     environment: nil,
        #     input: nil,
        #     level: nil,
        #     metadata: nil,
        #     name: nil,
        #     output: nil,
        #     parent_observation_id: nil,
        #     start_time: nil,
        #     status_message: nil,
        #     trace_id: nil,
        #     version: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Langfuse::BaseModel) -> void
      end
    end
  end
end
