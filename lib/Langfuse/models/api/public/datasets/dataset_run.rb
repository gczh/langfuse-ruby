# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module Datasets
          class DatasetRun < Langfuse::BaseModel
            # @!attribute id
            #   Unique identifier of the dataset run
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #   The date and time when the dataset run was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute dataset_id
            #   Id of the associated dataset
            #
            #   @return [String]
            required :dataset_id, String, api_name: :datasetId

            # @!attribute dataset_name
            #   Name of the associated dataset
            #
            #   @return [String]
            required :dataset_name, String, api_name: :datasetName

            # @!attribute name
            #   Name of the dataset run
            #
            #   @return [String]
            required :name, String

            # @!attribute updated_at
            #   The date and time when the dataset run was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute description
            #   Description of the run
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute [r] metadata
            #   Metadata of the dataset run
            #
            #   @return [Object, nil]
            optional :metadata, Langfuse::Unknown

            # @!parse
            #   # @return [Object]
            #   attr_writer :metadata

            # @!parse
            #   # @param id [String]
            #   # @param created_at [Time]
            #   # @param dataset_id [String]
            #   # @param dataset_name [String]
            #   # @param name [String]
            #   # @param updated_at [Time]
            #   # @param description [String, nil]
            #   # @param metadata [Object]
            #   #
            #   def initialize(id:, created_at:, dataset_id:, dataset_name:, name:, updated_at:, description: nil, metadata: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end

        DatasetRun = Datasets::DatasetRun
      end
    end
  end
end
