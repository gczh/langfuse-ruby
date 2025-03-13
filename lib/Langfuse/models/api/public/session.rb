# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class Session < Langfuse::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute project_id
          #
          #   @return [String]
          required :project_id, String, api_name: :projectId

          # @!attribute environment
          #   The environment from which this session originated.
          #
          #   @return [String, nil]
          optional :environment, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param created_at [Time]
          #   # @param project_id [String]
          #   # @param environment [String, nil]
          #   #
          #   def initialize(id:, created_at:, project_id:, environment: nil, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
