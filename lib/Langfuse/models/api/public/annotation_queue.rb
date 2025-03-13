# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class AnnotationQueue < Langfuse::BaseModel
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

          # @!attribute score_config_ids
          #
          #   @return [Array<String>]
          required :score_config_ids, Langfuse::ArrayOf[String], api_name: :scoreConfigIds

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param created_at [Time]
          #   # @param name [String]
          #   # @param score_config_ids [Array<String>]
          #   # @param updated_at [Time]
          #   # @param description [String, nil]
          #   #
          #   def initialize(id:, created_at:, name:, score_config_ids:, updated_at:, description: nil, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
