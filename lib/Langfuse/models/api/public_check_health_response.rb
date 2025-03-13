# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class PublicCheckHealthResponse < Langfuse::BaseModel
        # @!attribute status
        #
        #   @return [String]
        required :status, String

        # @!attribute version
        #   Langfuse server version
        #
        #   @return [String]
        required :version, String

        # @!parse
        #   # @param status [String]
        #   # @param version [String]
        #   #
        #   def initialize(status:, version:, **) = super

        # def initialize: (Hash | Langfuse::BaseModel) -> void
      end
    end
  end
end
