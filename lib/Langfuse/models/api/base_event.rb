# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class BaseEvent < Langfuse::BaseModel
        # @!attribute id
        #   UUID v4 that identifies the event
        #
        #   @return [String]
        required :id, String

        # @!attribute timestamp
        #   Datetime (ISO 8601) of event creation in client. Should be as close to actual
        #     event creation in client as possible, this timestamp will be used for ordering
        #     of events in future release. Resolution: milliseconds (required), microseconds
        #     (optimal).
        #
        #   @return [String]
        required :timestamp, String

        # @!attribute [r] metadata
        #   Optional. Metadata field used by the Langfuse SDKs for debugging.
        #
        #   @return [Object, nil]
        optional :metadata, Langfuse::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :metadata

        # @!parse
        #   # @param id [String]
        #   # @param timestamp [String]
        #   # @param metadata [Object]
        #   #
        #   def initialize(id:, timestamp:, metadata: nil, **) = super

        # def initialize: (Hash | Langfuse::BaseModel) -> void
      end
    end
  end
end
