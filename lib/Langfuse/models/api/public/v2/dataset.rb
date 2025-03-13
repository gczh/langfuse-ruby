# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          class Dataset < Langfuse::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute project_id
            #
            #   @return [String]
            required :project_id, String, api_name: :projectId

            # @!attribute updated_at
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute [r] metadata
            #
            #   @return [Object, nil]
            optional :metadata, Langfuse::Unknown

            # @!parse
            #   # @return [Object]
            #   attr_writer :metadata

            # @!parse
            #   # @param id [String]
            #   # @param created_at [Time]
            #   # @param name [String]
            #   # @param project_id [String]
            #   # @param updated_at [Time]
            #   # @param description [String, nil]
            #   # @param metadata [Object]
            #   #
            #   def initialize(id:, created_at:, name:, project_id:, updated_at:, description: nil, metadata: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
