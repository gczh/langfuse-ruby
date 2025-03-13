# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class GetScoresResponseTraceData < Langfuse::BaseModel
          # @!attribute environment
          #   The environment of the trace referenced by score
          #
          #   @return [String, nil]
          optional :environment, String, nil?: true

          # @!attribute tags
          #   A list of tags associated with the trace referenced by score
          #
          #   @return [Array<String>, nil]
          optional :tags, Langfuse::ArrayOf[String], nil?: true

          # @!attribute user_id
          #   The user ID associated with the trace referenced by score
          #
          #   @return [String, nil]
          optional :user_id, String, api_name: :userId, nil?: true

          # @!parse
          #   # @param environment [String, nil]
          #   # @param tags [Array<String>, nil]
          #   # @param user_id [String, nil]
          #   #
          #   def initialize(environment: nil, tags: nil, user_id: nil, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
