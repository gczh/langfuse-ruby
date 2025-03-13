# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class TraceListResponse < Langfuse::BaseModel
          # @!attribute data
          #
          #   @return [Array<Langfuse::Models::API::Public::TraceListResponse::Data>]
          required :data, -> { Langfuse::ArrayOf[Langfuse::Models::API::Public::TraceListResponse::Data] }

          # @!attribute meta
          #
          #   @return [Langfuse::Models::API::Public::UtilsMetaResponse]
          required :meta, -> { Langfuse::Models::API::Public::UtilsMetaResponse }

          # @!parse
          #   # @param data [Array<Langfuse::Models::API::Public::TraceListResponse::Data>]
          #   # @param meta [Langfuse::Models::API::Public::UtilsMetaResponse]
          #   #
          #   def initialize(data:, meta:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void

          class Data < Langfuse::Models::API::Public::Trace
            # @!attribute html_path
            #   Path of trace in Langfuse UI
            #
            #   @return [String]
            required :html_path, String, api_name: :htmlPath

            # @!attribute latency
            #   Latency of trace in seconds
            #
            #   @return [Float]
            required :latency, Float

            # @!attribute observations
            #   List of observation ids
            #
            #   @return [Array<String>]
            required :observations, Langfuse::ArrayOf[String]

            # @!attribute scores
            #   List of score ids
            #
            #   @return [Array<String>]
            required :scores, Langfuse::ArrayOf[String]

            # @!attribute total_cost
            #   Cost of trace in USD
            #
            #   @return [Float]
            required :total_cost, Float, api_name: :totalCost

            # @!parse
            #   # @param html_path [String]
            #   # @param latency [Float]
            #   # @param observations [Array<String>]
            #   # @param scores [Array<String>]
            #   # @param total_cost [Float]
            #   #
            #   def initialize(html_path:, latency:, observations:, scores:, total_cost:, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
