# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class DatasetItem < Langfuse::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute dataset_id
          #
          #   @return [String]
          required :dataset_id, String, api_name: :datasetId

          # @!attribute dataset_name
          #
          #   @return [String]
          required :dataset_name, String, api_name: :datasetName

          # @!attribute status
          #
          #   @return [Symbol, Langfuse::Models::API::Public::DatasetStatus]
          required :status, enum: -> { Langfuse::Models::API::Public::DatasetStatus }

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute [r] expected_output
          #
          #   @return [Object, nil]
          optional :expected_output, Langfuse::Unknown, api_name: :expectedOutput

          # @!parse
          #   # @return [Object]
          #   attr_writer :expected_output

          # @!attribute [r] input
          #
          #   @return [Object, nil]
          optional :input, Langfuse::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :input

          # @!attribute [r] metadata
          #
          #   @return [Object, nil]
          optional :metadata, Langfuse::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :metadata

          # @!attribute source_observation_id
          #
          #   @return [String, nil]
          optional :source_observation_id, String, api_name: :sourceObservationId, nil?: true

          # @!attribute source_trace_id
          #
          #   @return [String, nil]
          optional :source_trace_id, String, api_name: :sourceTraceId, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param created_at [Time]
          #   # @param dataset_id [String]
          #   # @param dataset_name [String]
          #   # @param status [Symbol, Langfuse::Models::API::Public::DatasetStatus]
          #   # @param updated_at [Time]
          #   # @param expected_output [Object]
          #   # @param input [Object]
          #   # @param metadata [Object]
          #   # @param source_observation_id [String, nil]
          #   # @param source_trace_id [String, nil]
          #   #
          #   def initialize(
          #     id:,
          #     created_at:,
          #     dataset_id:,
          #     dataset_name:,
          #     status:,
          #     updated_at:,
          #     expected_output: nil,
          #     input: nil,
          #     metadata: nil,
          #     source_observation_id: nil,
          #     source_trace_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
