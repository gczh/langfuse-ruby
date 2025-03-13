# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class TraceDeleteMultipleParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute trace_ids
          #   List of trace IDs to delete
          #
          #   @return [Array<String>]
          required :trace_ids, Langfuse::ArrayOf[String], api_name: :traceIds

          # @!parse
          #   # @param trace_ids [Array<String>]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(trace_ids:, request_options: {}, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
