# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ScoreCreateResponse < Langfuse::BaseModel
          # @!attribute id
          #   The id of the created object in Langfuse
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
