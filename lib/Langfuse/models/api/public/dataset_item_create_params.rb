# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class DatasetItemCreateParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute dataset_name
          #
          #   @return [String]
          required :dataset_name, String, api_name: :datasetName

          # @!attribute id
          #   Dataset items are upserted on their id. Id needs to be unique (project-level)
          #     and cannot be reused across datasets.
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

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

          # @!attribute status
          #   Defaults to ACTIVE for newly created items
          #
          #   @return [Symbol, Langfuse::Models::API::Public::DatasetStatus, nil]
          optional :status, enum: -> { Langfuse::Models::API::Public::DatasetStatus }, nil?: true

          # @!parse
          #   # @param dataset_name [String]
          #   # @param id [String, nil]
          #   # @param expected_output [Object]
          #   # @param input [Object]
          #   # @param metadata [Object]
          #   # @param source_observation_id [String, nil]
          #   # @param source_trace_id [String, nil]
          #   # @param status [Symbol, Langfuse::Models::API::Public::DatasetStatus, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     dataset_name:,
          #     id: nil,
          #     expected_output: nil,
          #     input: nil,
          #     metadata: nil,
          #     source_observation_id: nil,
          #     source_trace_id: nil,
          #     status: nil,
          #     request_options: {},
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
