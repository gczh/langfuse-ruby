# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class SessionRetrieveResponse < Langfuse::Models::API::Public::Session
          # @!attribute traces
          #
          #   @return [Array<Langfuse::Models::API::Public::Trace>]
          required :traces, -> { Langfuse::ArrayOf[Langfuse::Models::API::Public::Trace] }

          # @!parse
          #   # @param traces [Array<Langfuse::Models::API::Public::Trace>]
          #   #
          #   def initialize(traces:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
