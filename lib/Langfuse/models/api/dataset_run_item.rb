# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class DatasetRunItem < Langfuse::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute dataset_item_id
        #
        #   @return [String]
        required :dataset_item_id, String, api_name: :datasetItemId

        # @!attribute dataset_run_id
        #
        #   @return [String]
        required :dataset_run_id, String, api_name: :datasetRunId

        # @!attribute dataset_run_name
        #
        #   @return [String]
        required :dataset_run_name, String, api_name: :datasetRunName

        # @!attribute trace_id
        #
        #   @return [String]
        required :trace_id, String, api_name: :traceId

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute observation_id
        #
        #   @return [String, nil]
        optional :observation_id, String, api_name: :observationId, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param created_at [Time]
        #   # @param dataset_item_id [String]
        #   # @param dataset_run_id [String]
        #   # @param dataset_run_name [String]
        #   # @param trace_id [String]
        #   # @param updated_at [Time]
        #   # @param observation_id [String, nil]
        #   #
        #   def initialize(
        #     id:,
        #     created_at:,
        #     dataset_item_id:,
        #     dataset_run_id:,
        #     dataset_run_name:,
        #     trace_id:,
        #     updated_at:,
        #     observation_id: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Langfuse::BaseModel) -> void
      end
    end
  end
end
