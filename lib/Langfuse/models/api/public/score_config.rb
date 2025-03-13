# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ScoreConfig < Langfuse::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute data_type
          #
          #   @return [Symbol, Langfuse::Models::API::Public::ScoreDataType]
          required :data_type, enum: -> { Langfuse::Models::API::Public::ScoreDataType }, api_name: :dataType

          # @!attribute is_archived
          #   Whether the score config is archived. Defaults to false
          #
          #   @return [Boolean]
          required :is_archived, Langfuse::BooleanModel, api_name: :isArchived

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

          # @!attribute categories
          #   Configures custom categories for categorical scores
          #
          #   @return [Array<Langfuse::Models::API::Public::ConfigCategory>, nil]
          optional :categories, -> { Langfuse::ArrayOf[Langfuse::Models::API::Public::ConfigCategory] }, nil?: true

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute max_value
          #   Sets maximum value for numerical scores. If not set, the maximum value defaults
          #     to +∞
          #
          #   @return [Float, nil]
          optional :max_value, Float, api_name: :maxValue, nil?: true

          # @!attribute min_value
          #   Sets minimum value for numerical scores. If not set, the minimum value defaults
          #     to -∞
          #
          #   @return [Float, nil]
          optional :min_value, Float, api_name: :minValue, nil?: true

          # @!parse
          #   # Configuration for a score
          #   #
          #   # @param id [String]
          #   # @param created_at [Time]
          #   # @param data_type [Symbol, Langfuse::Models::API::Public::ScoreDataType]
          #   # @param is_archived [Boolean]
          #   # @param name [String]
          #   # @param project_id [String]
          #   # @param updated_at [Time]
          #   # @param categories [Array<Langfuse::Models::API::Public::ConfigCategory>, nil]
          #   # @param description [String, nil]
          #   # @param max_value [Float, nil]
          #   # @param min_value [Float, nil]
          #   #
          #   def initialize(
          #     id:,
          #     created_at:,
          #     data_type:,
          #     is_archived:,
          #     name:,
          #     project_id:,
          #     updated_at:,
          #     categories: nil,
          #     description: nil,
          #     max_value: nil,
          #     min_value: nil,
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
