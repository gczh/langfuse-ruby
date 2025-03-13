# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class TraceRetrieveResponse < Langfuse::Models::API::Public::Trace
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
          #   List of observations
          #
          #   @return [Array<Langfuse::Models::API::Public::ObservationsView>]
          required :observations, -> { Langfuse::ArrayOf[Langfuse::Models::API::Public::ObservationsView] }

          # @!attribute scores
          #   List of scores
          #
          #   @return [Array<Langfuse::Models::API::Public::Score::UnionMember0, Langfuse::Models::API::Public::Score::UnionMember1, Langfuse::Models::API::Public::Score::UnionMember2>]
          required :scores, -> { Langfuse::ArrayOf[union: Langfuse::Models::API::Public::Score] }

          # @!attribute total_cost
          #   Cost of trace in USD
          #
          #   @return [Float]
          required :total_cost, Float, api_name: :totalCost

          # @!parse
          #   # @param html_path [String]
          #   # @param latency [Float]
          #   # @param observations [Array<Langfuse::Models::API::Public::ObservationsView>]
          #   # @param scores [Array<Langfuse::Models::API::Public::Score::UnionMember0, Langfuse::Models::API::Public::Score::UnionMember1, Langfuse::Models::API::Public::Score::UnionMember2>]
          #   # @param total_cost [Float]
          #   #
          #   def initialize(html_path:, latency:, observations:, scores:, total_cost:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
