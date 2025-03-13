# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class CreateEventBody < Langfuse::Models::API::OptionalObservationBody
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!parse
        #   # @param id [String, nil]
        #   #
        #   def initialize(id: nil, **) = super

        # def initialize: (Hash | Langfuse::BaseModel) -> void
      end
    end
  end
end
