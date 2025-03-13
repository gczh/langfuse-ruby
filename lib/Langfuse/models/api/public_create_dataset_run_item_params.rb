# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class PublicCreateDatasetRunItemParams < Langfuse::BaseModel
        # @!parse
        #   extend Langfuse::RequestParameters::Converter
        include Langfuse::RequestParameters

        # @!attribute dataset_item_id
        #
        #   @return [String]
        required :dataset_item_id, String, api_name: :datasetItemId

        # @!attribute run_name
        #
        #   @return [String]
        required :run_name, String, api_name: :runName

        # @!attribute [r] metadata
        #   Metadata of the dataset run, updates run if run already exists
        #
        #   @return [Object, nil]
        optional :metadata, Langfuse::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :metadata

        # @!attribute observation_id
        #
        #   @return [String, nil]
        optional :observation_id, String, api_name: :observationId, nil?: true

        # @!attribute run_description
        #   Description of the run. If run exists, description will be updated.
        #
        #   @return [String, nil]
        optional :run_description, String, api_name: :runDescription, nil?: true

        # @!attribute trace_id
        #   traceId should always be provided. For compatibility with older SDK versions it
        #     can also be inferred from the provided observationId.
        #
        #   @return [String, nil]
        optional :trace_id, String, api_name: :traceId, nil?: true

        # @!parse
        #   # @param dataset_item_id [String]
        #   # @param run_name [String]
        #   # @param metadata [Object]
        #   # @param observation_id [String, nil]
        #   # @param run_description [String, nil]
        #   # @param trace_id [String, nil]
        #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     dataset_item_id:,
        #     run_name:,
        #     metadata: nil,
        #     observation_id: nil,
        #     run_description: nil,
        #     trace_id: nil,
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
