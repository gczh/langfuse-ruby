# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class UpdateSpanBody < Langfuse::Models::API::OptionalObservationBody
        # @!attribute end_time
        #
        #   @return [Time, nil]
        optional :end_time, Time, api_name: :endTime, nil?: true

        # @!parse
        #   # @param end_time [Time, nil]
        #   #
        #   def initialize(end_time: nil, **) = super

        # def initialize: (Hash | Langfuse::BaseModel) -> void
      end
    end
  end
end
