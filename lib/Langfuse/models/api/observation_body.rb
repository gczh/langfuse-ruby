# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class ObservationBody < Langfuse::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Langfuse::Models::API::ObservationBody::Type]
        required :type, enum: -> { Langfuse::Models::API::ObservationBody::Type }

        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute completion_start_time
        #
        #   @return [Time, nil]
        optional :completion_start_time, Time, api_name: :completionStartTime, nil?: true

        # @!attribute end_time
        #
        #   @return [Time, nil]
        optional :end_time, Time, api_name: :endTime, nil?: true

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

        # @!attribute model
        #
        #   @return [String, nil]
        optional :model, String, nil?: true

        # @!attribute model_parameters
        #
        #   @return [Hash{Symbol=>String, Integer, Boolean, Array<String>, nil}, nil]
        optional :model_parameters,
                 -> { Langfuse::HashOf[union: Langfuse::Models::API::ObservationBody::ModelParameter, nil?: true] },
                 api_name: :modelParameters,
                 nil?: true

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

        # @!attribute usage
        #   (Deprecated. Use usageDetails and costDetails instead.) Standard interface for
        #     usage and cost
        #
        #   @return [Langfuse::Models::API::Public::Usage, nil]
        optional :usage, -> { Langfuse::Models::API::Public::Usage }, nil?: true

        # @!attribute version
        #
        #   @return [String, nil]
        optional :version, String, nil?: true

        # @!parse
        #   # @param type [Symbol, Langfuse::Models::API::ObservationBody::Type]
        #   # @param id [String, nil]
        #   # @param completion_start_time [Time, nil]
        #   # @param end_time [Time, nil]
        #   # @param environment [String, nil]
        #   # @param input [Object]
        #   # @param level [Symbol, Langfuse::Models::API::Public::ObservationLevel, nil]
        #   # @param metadata [Object]
        #   # @param model [String, nil]
        #   # @param model_parameters [Hash{Symbol=>String, Integer, Boolean, Array<String>, nil}, nil]
        #   # @param name [String, nil]
        #   # @param output [Object]
        #   # @param parent_observation_id [String, nil]
        #   # @param start_time [Time, nil]
        #   # @param status_message [String, nil]
        #   # @param trace_id [String, nil]
        #   # @param usage [Langfuse::Models::API::Public::Usage, nil]
        #   # @param version [String, nil]
        #   #
        #   def initialize(
        #     type:,
        #     id: nil,
        #     completion_start_time: nil,
        #     end_time: nil,
        #     environment: nil,
        #     input: nil,
        #     level: nil,
        #     metadata: nil,
        #     model: nil,
        #     model_parameters: nil,
        #     name: nil,
        #     output: nil,
        #     parent_observation_id: nil,
        #     start_time: nil,
        #     status_message: nil,
        #     trace_id: nil,
        #     usage: nil,
        #     version: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Langfuse::BaseModel) -> void

        # @abstract
        #
        class Type < Langfuse::Enum
          SPAN = :SPAN
          GENERATION = :GENERATION
          EVENT = :EVENT

          finalize!
        end

        # @abstract
        #
        class ModelParameter < Langfuse::Union
          StringArray = Langfuse::ArrayOf[String]

          variant String

          variant Integer

          variant Langfuse::BooleanModel

          variant Langfuse::Models::API::ObservationBody::ModelParameter::StringArray
        end
      end
    end
  end
end
